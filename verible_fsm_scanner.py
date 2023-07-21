"""
    Print module name, ports, parameters and imports.
    Print all registers found (initially we just print all the Kalways item)
    then we do filter out cases (always_ff and always with clock)

    the info that are required:
    -> Reset value
    -> driven conditional statement (FSM related)
    -> Clock under which the Flop is located
    -> Reset domain under which the Flop is located

    Usage: find_register.py PATH_TO_VERIBLE_VERILOG_SYNTAX VERILOG_FILE [VERILOG_FILE [...]]

    Extracted information:

    * module name
    * module port names
    * module parameter names
    * module imports
    * module header code
    * Register Name
    * Register Width
    * Reset value
    * Reset domain
    * Clock domain
    * Register Hier PATH (if more then 1 module deeper from the ROOT)
"""

""" Imported PKG required Verible to be Installed"""
import sys
import anytree
import verible_verilog_syntax

"""START BODY"""

def process_file_data(path: str, data: verible_verilog_syntax.SyntaxData):
  """Print information about modules found in SystemVerilog file.

  This function uses verible_verilog_syntax.Node methods to find module
  declarations and specific tokens containing following information:

  * module name
  * module port names
  * module parameter names
  * module imports
  * module header code

  Args:
    path: Path to source file (used only for informational purposes)
    data: Parsing results returned by one of VeribleVerilogSyntax' parse_*
          methods.
  """
  if not data.tree:
    return

  modules_info = []

  # Collect information about each module declaration in the file
  for module in data.tree.iter_find_all({"tag": "kModuleDeclaration"}):
    module_info = {
      "header_text": "",
      "name": "",
      "ports": [],
      "parameters": [],
      "imports": [],
    }

    # Find module header
    header = module.find({"tag": "kModuleHeader"})
    if not header:
      continue
    module_info["header_text"] = header.text

    # Find module name
    name = header.find({"tag": ["SymbolIdentifier", "EscapedIdentifier"]}, iter_=anytree.PreOrderIter)

    if not name:
      continue
    module_info["name"] = name.text

    # Get the list of ports
    for port in header.iter_find_all({"tag": ["kPortDeclaration", "kPort"]}):
      port_id = port.find({"tag": ["SymbolIdentifier", "EscapedIdentifier"]})
      module_info["ports"].append(port_id.text)

    # Get the list of parameters
    for param in header.iter_find_all({"tag": ["kParamDeclaration"]}):
      param_id = param.find({"tag": ["SymbolIdentifier", "EscapedIdentifier"]})
      module_info["parameters"].append(param_id.text)

    # Get the list of imports
    for pkg in module.iter_find_all({"tag": ["kPackageImportItem"]}):
      module_info["imports"].append(pkg.text)

    modules_info.append(module_info)

  # Print results
  if len(modules_info) > 0:
    print(f"\033[1;97;7m{path} \033[0m\n")

  def print_entry(key, values):
    fmt_values = [f"\033[92m{v}\033[0m" for v in values]
    value_part = (f"\n\033[33m// {' '*len(key)}".join(fmt_values)
                  or "\033[90m-\033[0m")
    print(f"\033[33m// \033[93m{key}{value_part}")

  for module_info in modules_info:
    print_entry("name:       ", [module_info["name"]])
    print_entry("ports:      ", module_info["ports"])
    print_entry("parameters: ", module_info["parameters"])
    print_entry("imports:    ", module_info["imports"])
    print(f"\033[97m{module_info['header_text']}\033[0m\n")

def process_registers(path: str, data: verible_verilog_syntax.SyntaxData):
  """
    Print information about regsiters or FlipFlop found in SystemVerilog file.
  """
  if not data.tree:
    "Print Returning"
    return
  
  register_coll = []

  register_info = {
      "name": "",
      "is_a_register": bool,
      "width": 32,
      "Reset_Value": 0,
      "Clock_Domain": "",
      #"Reset_Domain": "",
      "Hier_Path": "FSM",
      "Driven_Event" : []
  }

  # Collect information about each module declaration in the file
  for module in data.tree.iter_find_all({"tag": "kModuleDeclaration"}):
    
    # Find module name
    header = module.find({"tag": "kModuleHeader"})
    name = header.find({"tag": ["SymbolIdentifier", "EscapedIdentifier"]}, iter_=anytree.PreOrderIter)

    el=None
    # Collect information about each instance in the file
    for instance in module.iter_find_all({"tag": "kGateInstance"}):
      el = instance.find({"tag": "SymbolIdentifier"})
    l = []
    # Loop through elements within an "always block"
    for always_proc in module.iter_find_all({"tag": ["kAlwaysStatement"]}):
      for timing_proc in always_proc.iter_find_all({"tag": "kProceduralTimingControlStatement"}):
        print(timing_proc)
        ####  EVENTS   ####
        # Loop through elements inside the event list
        # i.e. "  (posedge clk or posedge reset)  "
        for event_list in timing_proc.iter_find_all({"tag": "kEventExpressionList"}):
          print(event_list)
          # Loop through event + related signal
          # i.e. "  posedge clk  ""
          # i.e. "  posedge reset  "
          for event_element in event_list.iter_find_all({"tag": "kEventExpression"}):
            print(event_element)
            # Loop through signal
            # i.e. "  clk "
            # i.e. "  reset  "
            for signal_event in event_element.iter_find_all({"tag": "SymbolIdentifier"}):
              # Append the found signals on the 'Driven Event' list of the 'Register info' dictionary
              # i.e " 'Driven_Event': ['clk', 'reset']  "
              register_info["Driven_Event"].append(signal_event.text)
          print("Register info: \n", register_info)

        ####  SIGNALS   ####
        # Loop through signals which depend on the events above
        # Collect code within each begin-end (including the one in the always_ff)
        for sequential_proc in timing_proc.iter_find_all({"tag": "kSeqBlock"}):
          print(sequential_proc)
          if(sequential_proc != None):
            register_info["is_a_register"]  = True
            #register_info["name"] = "FSM" if (el==None) else (el.text)
            #register_info["Hier_Path"]      = register_info["Hier_Path"] + "." + register_info["name"]
            register_coll.append(register_info)
          else:
            register_info["is_a_register"]  = False
          for reg_body in sequential_proc.iter_find_all({"tag": "kBlockItemStatementList"}):
            #print("DEBUG reg_body\n",reg_body.text)
            print(reg_body)
            # Collect code lines between inside begin-end of "else" branches
            for cond in reg_body.iter_find_all({"tag": "kElseBody"}):
              print(cond)
            # Collect code lines between inside begin-end of "if" branches
            for cond in reg_body.iter_find_all({"tag": "kIfBody"}):
              print(cond) 
          # Loop through all the non-blocking assignments
          # i.e. "  state <= S3;  "
          for nba_assign in sequential_proc.iter_find_all({"tag": "kNonblockingAssignmentStatement"}):
            print(nba_assign)
            # Collect the lhs elements of the assignment (basically signals changing)
            # " state "
            for lhs in nba_assign.iter_find_all({"tag": "kLPValue"}):
              print(lhs)
              for s in lhs.iter_find_all({"tag": "SymbolIdentifier"}):
                #print("DEBUG s\n", type(s))
                l.append(s.text)
        
       

        if(len(register_info["Driven_Event"]) == 1):
          register_info["Clock_Domain"] = register_info["Driven_Event"][0]
        else:
          pass

  register_coll = []
  # some signal can have left-hand assignment multiple times within the same always procedural block
  # therefor you use set to create a unique list
  for element in list(set(l)):
    #print(element)
    register_coll.append(dict({
      "name": element,
      "is_a_register": True,
      "width": 32,
      "Reset_Value": 0,
      "Clock_Domain": register_info["Clock_Domain"],
      #"Reset_Domain": "",
      "Hier_Path": "FSM" + "." + element,
      "Driven_Event" : register_info["Driven_Event"]
    }))
    #register_coll[0].update({"name":"a"})
  for reg in register_coll:
    if(reg["is_a_register"] == True):
      print(reg)

      
""" 
    MAIN Function:

"""
def main():
  #parser_path   = "/opt/homebrew/bin/verible-verilog-syntax" Raff's
  parser_path   = "verible-verilog-syntax"
  files         = ["./FSM.sv"]
  parser        = verible_verilog_syntax.VeribleVerilogSyntax(executable=parser_path)
  data          = parser.parse_files(files)

  for file_path, file_data in data.items():
    #process_file_data(file_path, file_data)
    process_registers(file_path, file_data)

if __name__ == "__main__":
  sys.exit(main())
