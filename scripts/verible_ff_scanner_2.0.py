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
import copy
from BleedBits_module import return_instance_list
from BleedBits_module import return_register_list
from BleedBits_module import returnInst

"""START BODY"""

class Register:
    """
    This class represents each of the single register found.

    """
    def __init__(self, name = "", is_a_register = False, width = 32, Reset_Value = 0, Clock_Domain = "", Hier_Path = "FSM"):
        self.name = name
        self.is_a_register = is_a_register  #dunno if this is necessary since we create the Register instance only if the register exists
        self.width = width
        self.Reset_Value = Reset_Value
        self.Clock_Domain = Clock_Domain
        self.Hier_Path = Hier_Path
        #Driven_Event = []      Check this  
    
    def __str__(self):
        return f"Name: {self.name}, Surname: {self.surname}, Age: {self.age}"
    
class Module:
    """
    This class represents each of the module which contains an instance or a register.

    """
    def __init__(self, name):
        self.name = name
        self.instances = []
        self.registers = []

    def __str__(self):
        instance_str = "\n".join(str(instance) for instance in self.instances)
        register_str = "\n".join(str(register) for register in self.registers)
        return f"Module: {self.name}\nInstances:\n{instance_str}\nRegisters:\n{register_str}"
   
# Example usage
#module = Module("MyModule")

# Add instances to the module
#module.instances.append("Instance1")
#module.instances.append("Instance2")

# Create Register instances and add them to the module
#register1 = Register("Register1")
#register2 = Register("Register2")
#module.registers.append(register1)
#module.registers.append(register2)  

class Factory:
    """
    This class is used to register each hardware register part of a module

    """
    def __init__(self):
        self.classes = {}
    
    def register_class(self, class_name, cls):
        self.classes[class_name] = cls
    
    def create_instance(self, class_name, data):
        cls = self.classes.get(class_name)
        if cls:
            return cls(**data)
        else:
            raise ValueError(f"Class '{class_name}' is not registered in the factory.")
        

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
  
  module_list = [dict]

  for module in data.tree.iter_find_all({"tag": "kHierarchySegment"}):
     print("DEUG: ",module)

  #######################################
  # Collect information about each module 
  #######################################
  for module in data.tree.iter_find_all({"tag": "kModuleDeclaration"}):

    # Extract module name
    header = module.find({"tag": "kModuleHeader"})
    module_name = header.find({"tag": ["SymbolIdentifier", "EscapedIdentifier"]}, iter_=anytree.PreOrderIter)

    # Create the dictionary to attach to 'module_list'
    module_info = {
      # Name of the module
      # i.e. 'module_name': 'JKFlipflop'
      "module_name": module_name.text,  
      # List of instances within it
      # i.e. 'instance_list': [{'instance_name': 'dff1', 'instance_type': 'Async_Flipflop'}, {'instance_name': 'dff2', 'instance_type': 'Async_Flipflop'}]
      "instance_list": return_instance_list(module),
      # List of registers within it
      # i.e. 'register_list': [{'name': 'q', 'is_a_register': True, 'width': 32, 'Reset_Value': 0, 'Clock_Domain': '', 'Hier_Path': 'FSM.q', 'Driven_Event': ['clk', 'reset']}]
      "register_list": return_register_list(module)
    } 
    module_list.append(module_info)
  del module_list[0] # remove some garbage

  # Print "module_list" entries
  print("\nInformation about each module: \n")
  for module in module_list:
    print("module_name: ",module["module_name"])
    print("instance_list: ",module["instance_list"])
    print("register_list: ",module["register_list"])
  
  ################################
  # Generate the modules hierarchy
  ################################
  # i.e. path : jk_flipflop_2.sync_ff1
  #      module_name : Sync_Flipflop
  #      path : jk_flipflop_2
  #      module_name : JKFlipflop
  #      path : fsm1
  #      module_name : FSM
  # Top module must be specified explicitly
  top_module = [d for d in module_list if d["module_name"] == "Top_module"] # "top_module" is a list
  if not top_module:
    print("This list is empty. Stopping the script")
    exit()
  top_module = top_module[0]  # select just the first item of the list
  hierarchy = []  # hierarchy container
  print("\n")
  hierarchy = returnInst(module_list,top_module["module_name"])
  print("\nHierarchy generated: \n")
  # print the hierarchy entires
  for path in hierarchy:
    print("path :",path["instance_name"])
    print("module_name :",path["instance_type"])

  ##################################
  # Generate the registers hierarchy
  ##################################
  # i.e ...'Hier_Path': 'jk_flipflop_1.async_ff1.q', 'Driven_Event': ['clk', 'reset']}
  #     ...'Hier_Path': 'jk_flipflop_1.async_ff2.q', 'Driven_Event': ['clk', 'reset']}
  #     ...'Hier_Path': 'jk_flipflop_1.sync_ff1.q', 'Driven_Event': ['clk']}
  signals_hierarchy = []
  for path in hierarchy: # loop through each instance
      print("\n")
      print("path: ",path["instance_name"])
      # Look for the module type in the module_list
      module_found = [d for d in module_list if d["module_name"] == path["instance_type"]] # "module_found" is a list
      if not module_found: # if nothing is returned and the list is empty
        return []
      module_found = module_found[0] # select the first item of the list
      print("module_name: ",module_found["module_name"])
      # check if the module has an empty register list (doesn't contain any signal, maybe it contains just instances)
      if not module_found["register_list"]: 
        print("Register list is empty")
        continue # break this iteration
      for item in module_found["register_list"]:  # iterate through the registers
        register = copy.deepcopy(item)
        register["Hier_Path"] = path["instance_name"] + register["Hier_Path"] # attach the instance hierarchy 
        print("register : ",register)
        signals_hierarchy.append(register)
  print("\n")
  for item in signals_hierarchy:
    print("register: ",item)

""" 
    MAIN Function:

"""
def main():
  #parser_path   = "/opt/homebrew/bin/verible-verilog-syntax"
  parser_path   = "verible-verilog-syntax"
  files         = ["./MainModule_and_FSM.sv"]
  parser        = verible_verilog_syntax.VeribleVerilogSyntax(executable=parser_path)
  data          = parser.parse_files(files)

  for file_path, file_data in data.items():
    #process_file_data(file_path, file_data)
    process_registers(file_path, file_data)

if __name__ == "__main__":
  sys.exit(main())
