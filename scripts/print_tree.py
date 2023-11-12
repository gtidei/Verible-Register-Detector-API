#!/usr/bin/env python3
import sys
import verible_verilog_syntax
import json

def main():
  uut_path = ["/Volumes/My_Data/MY_SYSTEMVERILOG_UVM_PROJECTS/BLEEDBITS/surelog_py_api/dut.sv"]
  parser = verible_verilog_syntax.VeribleVerilogSyntax(executable="/opt/homebrew/bin/verible-verilog-syntax")
  data = parser.parse_files(uut_path, options={"gen_rawtokens": True})
  print(data)
  print(type(data))

if __name__ == "__main__":
  main()
