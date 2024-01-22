`timescale 1ns/1ps

// This module uses behavioral Verilog.
//
// Behavior:
//    If "en" (enable) is 1, then input d is
//    written to output q with a one-cycle delay.
//
//    If "en" is 0, then q is reset to 0 with
//    a one-cycle delay.
//
module top_v (
                      input clk,
                      input en,
                      input d,
                      output reg q
                      );
   wire _q;

simple_module SM1(
		.clk(clk),
		.en(en),
		.d(d),
		.q(_q)
);

   always @(posedge clk) begin
      q <= _q;
   end

endmodule
