`timescale 1ns/1ns

module JKFlipflop(input logic [31:0] J, input logic [31:0] K,
                  input logic clk, input logic reset, output logic [31:0] q);
  logic [31:0] w;
  assign w=(J&~q)|(~K&q);
  Async_Flipflop dff1(w,clk,reset,q);
  Async_Flipflop dff2(w,clk,reset,q);
  Sync_Flipflop dff3(w,clk,reset,q);
endmodule

module Async_Flipflop(input logic [31:0] Din, input logic clk,
                      input logic reset, output logic [31:0] q);
    always_ff@(posedge clk or posedge reset) begin
      if(reset)
        q<='0;
      else
        q<=Din;
    end
endmodule

module Sync_Flipflop(input logic [31:0] Din, input logic clk,
                     input logic reset, output logic [31:0] q);
    always_ff@(posedge clk) begin
      if(reset)
        q<='0;
      else
        q<=Din;
    end
endmodule

module AnotherModule(input logic [31:0] J, input logic [31:0] K,
                     input logic clk, input logic reset, output logic [31:0] q);
    JKFlipflop jk_flipflop(J, K, clk, reset, q);
endmodule
