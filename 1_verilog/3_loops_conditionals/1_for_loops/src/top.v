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
                             input load,
                             input [7:0] a,
                             output reg [3:0] q
                             );
    wire [3:0] _q;
    reg [7:0] _a;

add_bits add_bits_instance(
		.a(_a),
		.q(_q)
);

    always @(posedge clk) begin
        q <= _q;
        if (load == 1) begin
            _a <= a;
        end
    end

endmodule
