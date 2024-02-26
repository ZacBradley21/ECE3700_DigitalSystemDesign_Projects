`timescale 1ns/1ps

module lekeyboard_audio_testbench();

   // Inputs
   reg clk;
   reg rst;
   reg btn1;
   reg [7:0] volume;
   reg [3:0] row;

   // Outputs
   wire [3:0] col;
   wire led;
   wire AIN;
   wire GAIN;
   wire SHUTDOWN_L;

   // Instantiate the module under test
   keyboard_audio DUT (
      .clk(clk),
      .rst(rst),
      .btn1(btn1),
      .volume(volume),
      .led(led),
      .AIN(AIN),
      .GAIN(GAIN),
      .SHUTDOWN_L(SHUTDOWN_L),
      .row(row),
      .col(col)
   );

   // Clock generation
   always #5 clk = ~clk;

   // Initialize inputs
   initial begin
      clk = 0;
      rst = 1;
      btn1 = 0;
      volume = 8'b00000000;
      row = 4'b0000;

      // Reset
      #10 rst = 0;
      #10 rst = 1;

      // Simulate button press
      #20 btn1 = 1;

      // Simulate volume change
      #30 volume = 8'b01010101;

      // Simulate keypad input
      #40 row = 4'b0010;

      // Finish simulation
      #50 $finish;
   end

endmodule