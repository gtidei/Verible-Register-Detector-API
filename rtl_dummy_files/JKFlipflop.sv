`timescale 1ns/1ns

module JKFlipflop(input logic [31:0] J, input logic [31:0] K,
                  input logic clk, input logic reset, output logic [31:0] q);
  logic [31:0] w;
  assign w=(J&~q)|(~K&q);
  D_Flipflop dff(w,clk,reset,q);
endmodule

module D_Flipflop(input logic [31:0] Din, input logic clk,
                  input logic reset, output logic [31:0] q);
    always_ff@(posedge clk or posedge reset) begin
      if(reset)
        q<='0;
      else
        q<=Din;
    end
endmodule
