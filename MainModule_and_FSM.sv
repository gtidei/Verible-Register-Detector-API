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

module FSM(
    input logic clk,
    input logic reset,
    input logic input_bit,
    output logic output_signal
);
    typedef enum logic [1:0] {
        S0 = 2'b00,
        S1 = 2'b01,
        S2 = 2'b10,
        S3 = 2'b11
    }state_t;

    state_t state;

    always_ff @(posedge clk or posedge reset) begin //kSB1
        if (reset) begin    //kSB2
            state <= S0;
            output_signal <= 0;
        end else begin      //kSB3
            case (state)
                S0: begin   //kSB4
                    if (input_bit) begin    //kSB5
                        state <= S1;
                    end else begin          //kSB6
                        state <= S0;
                    end
                end
                S1: begin   //kSB7
                    if (input_bit) begin    //kSB8
                        state <= S3; // Detected sequence, transition to final state
                        output_signal <= 1; // Set output signal to 1
                    end else begin          //kSB9
                        state <= S2;
                    end
                end
                S2: begin                   //kSB10
                    if (input_bit) begin    //kSB11
                        state <= S3;
                    end else begin          //kSB12
                        state <= S0;
                    end
                end
                /*S3: begin                   //kSB13
                    state <= S0;
                end*/
                S3: state <= S0;
                /*default: begin              //kSB14
                    state <= S0;
                end*/
                default: state <= S0;
            endcase
        end
    end
endmodule
