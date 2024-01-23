//`timescale 1ns / 1ps
module bitwise_operations(
    input clk,
    input [6:0] a,
    input [6:0] b,
    input [1:0] op,
    output reg [6:0] q
);

always @(posedge clk) begin
    if (op == 2'b00) begin
        q <= a & b;
    end else if (op == 2'b01) begin
        q <= a | b;
    end else if (op == 2'b10) begin
        q <= a ^ b;
    end else if (op == 2'b11) begin
        q <= ~(a & b);
    end
end
endmodule