`timescale 1ns/1ps

module top
  (
   input              clk,
   input              rst,
   input              SDO,
   output 	         SCLK,
   output    	       CS,
   output     [15:0]  led
    );

    wire rst_l;
    assign rst_l = ~rst;
    reg rd;
    wire d_ready;

    simpleSPI SPI(
        .clk(clk),
        .rst_l(rst_l),
        .SCLK(SCLK),
        .rd(rd),
        .d_ready(d_ready),
        .d(led),
        .CS(CS),
        .SDO(SDO)
    );
parameter refresh_period = 40_000;
    always @(negedge SCLK) begin
        if (d_ready == 0) begin
            rd <= 1;
        end
        else
            rd <= 0;
    end

endmodule
