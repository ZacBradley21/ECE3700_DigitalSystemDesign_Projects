`timescale 1ns/1ps

module pwm_audio_testbench();
   reg clk;
   reg rst_n;
   reg [7:0] volume;
   reg [9:0] N;
   wire sout;
   
   pwm_audio DUT (
      .clk(clk),
      .rst_n(rst_n),
      .volume(volume),
      .N(N),
      .sout(sout)
   );
   
   initial begin
      clk = 0;
      rst_n = 0;
      volume = 8'h80;
      N = 10'd100;
      
      #10 rst_n = 1;
      
      repeat (100) begin
         #5 clk = ~clk;
      end
      
      $finish;
   end
  
endmodule // pwm_audio_testbench