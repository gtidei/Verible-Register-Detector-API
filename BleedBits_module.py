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


def return_instance_list(module):
    """
    This function receives a module and returns the list of instances present in it.

    Args:
        module (verible_verilog_syntax.BranchNode): Module from instances are extracted.

    Returns:
        inst_list (list): List of instances present in the module.
    """
    
    # Check for correct arguments
    if not isinstance(module, verible_verilog_syntax.BranchNode):
        raise ValueError("The first argument must be a verible_verilog_syntax.BranchNode.")

    # Loop through all the instances, this includes modules and signals
    # i.e. "  logic [31:0] w  "
    # i.e " D_FlipFlop dff(w, clk, reset, q)  "
    instance_list = [dict]
    for instance in module.iter_find_all({"tag": "kInstantiationBase"}):
      # Create the dictionary to store instance name and type
      # i.e. 'instance_name': 'dff1', 'instance_type': 'Async_Flipflop'
      
      # Loop through the modules and gates instances (are signals cut out)
      # i.e " D_FlipFlop dff(w, clk, reset, q)  "
      # filter according to the 'kGateInstance' tag
      for inst in instance.iter_find_all({"tag": "kGateInstance"}):
        inst_name = inst.find({"tag": "SymbolIdentifier"})
        if (inst_name.text != ""):
          # Get the submodule type name
          for type in instance.iter_find_all({"tag": "kInstantiationType"}):
            inst_info = {
              "instance_type": type.text,
              "instance_name": inst_name.text
            }
            # Type
            #inst_info["instance_type"] = type.text
            # Name
            #inst_info["instance_name"] = instance_name.text 
            # Add to list
            instance_list.append(inst_info)
    return instance_list

def return_register_list(module):
    """
    This function receives a module and returns the list of registers present in it. Submodule
    registers are not included!

    Args:
        module (verible_verilog_syntax.BranchNode): Module from which registers are extracted.

    Returns:
        register_list (list): List of registers present in the module, SUBMODULE REGISTERS ARE NOT INCLUDED!.
    """
    
    # Check for correct arguments
    if not isinstance(module, verible_verilog_syntax.BranchNode):
        raise ValueError("The first argument must be a verible_verilog_syntax.BranchNode.")

    signal_set = []
    register_list = []
    # Loop through elements within an "always block"
    for always_proc in module.iter_find_all({"tag": ["kAlwaysStatement"]}):

      register_info = {
      "name": "",
      "is_a_register": bool,
      "width": 32,
      "Reset_Value": 0,
      "Clock_Domain": "",
      #"Reset_Domain": "",
      #"Hier_Path": "JKFlipflop",
      "Hier_Path": "",
      "Driven_Event" : []
      }
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

        ####  SIGNALS   ####
        # Loop through signals which depend on the events above
        # Collect code within each begin-end (including the one in the always_ff)
        for sequential_proc in timing_proc.iter_find_all({"tag": "kSeqBlock"}):
          print(sequential_proc)
          if(sequential_proc != None):
            register_info["is_a_register"]  = True
            #register_info["name"] = "FSM" if (el==None) else (el.text)
            #register_info["Hier_Path"]      = register_info["Hier_Path"] + "." + register_info["name"]
            register_list.append(register_info)
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
                signal_set.append(s.text)

    register_list = []
    # some signal can have left-hand assignment multiple times within the same always procedural block
    # therefor you use set to create a unique list
    for element in list(set(signal_set)):
      #print(element)
      register_list.append(dict({
        "name": element,
        "is_a_register": True,
        "width": 32,
        "Reset_Value": 0,
        "Clock_Domain": register_info["Clock_Domain"],
        #"Reset_Domain": "",
        #"Hier_Path": "FSM" + "." + element,
        "Hier_Path": "." + element,
        "Driven_Event" : register_info["Driven_Event"]
    }))
    return register_list

def returnInst(module_list,module_type):
    """
    This function receives a module and returns the list of registers present in it. Submodule
    registers are not included!

    Args:
        module_type (verible_verilog_syntax.BranchNode): Module from which registers are extracted.

    Returns:
        register_list (list): List of registers present in the module, SUBMODULE REGISTERS ARE NOT INCLUDED!.
    """
    
    # Check for correct arguments
    #if not isinstance(module, verible_verilog_syntax.BranchNode):
        #raise ValueError("The first argument must be a verible_verilog_syntax.BranchNode.")
    print(" input is module_type: ", module_type)
    module_found = [d for d in module_list if d["module_name"] == module_type] #this is list
    if not module_found:
      return []
    module_found = module_found[0]
    absolute_path = [dict] #variable to return
    #for instance in top_module["instance_list"]:
    print(" module name ",module_found["module_name"])
    print(" instance list ",module_found["instance_list"])
    for instance in module_found["instance_list"]:  #loop through the instances (list of dictionaries)
      # add the submodules of each instance
      print("instance list is", instance)
      inst_abs_path = returnInst(module_list,instance["instance_type"])
      #for items in inst_abs_path:
      #  items["instance_name"] = instance["instance_name"] + items["instance_name"]
      absolute_path.append(inst_abs_path)
      #add each instance
      absolute_path.append(instance)

    return absolute_path