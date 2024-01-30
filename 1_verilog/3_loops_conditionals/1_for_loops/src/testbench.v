`timescale 1ns/1ps

module testbench ();
   
   // DECLARE SIGNALS
   reg clk;      // "reg" signals are  controlled
   reg [7:0] a;  // by the testbench
   reg [7:0] b;  // [7:0] means "8-bit vector"
   wire [3:0] q; // wire for q

   integer clk_count = 0;   
   
   // INITIAL SIGNAL CONFIGURATION:
   initial begin
      clk = 0;      
      a   = 0;
      b   = 0;
   end

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;
   
   // CREATE STIMULI:
   always @(posedge clk) begin
      a <= $random();
      b <= $random();
   end

   // Instantiate top module and connect ports
   top_v DUT(
      .clk(clk),
      .load(1'b1),
      .a(a),
      .q(q)
   );

   // WRITE OUTPUT TO CONSOLE:
   integer fid;
   initial fid = $fopen("test_result.txt", "w");
   
   always @(posedge clk) begin
      $write("clk:  %d", clk_count);      
      $write("\ta:  %b", a);
      $write("\tb:  %b", b);
      $write("\tq:  %b", q); // report q in the log text
      $write("\n");
      
      $fwrite(fid,"clk:  %d", clk_count);      
      $fwrite(fid,"\ta:  %b", a);
      $fwrite(fid,"\tb:  %b", b);
      $fwrite(fid,"\tq:  %b", q); // report q in the log text
      $fwrite(fid,"\n");
   end

   // DEFINE WHEN TO TERMINATE SIMULATION:
   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 8) begin
	 $fclose(fid);
	 $finish;
      end
   end

   
endmodule // testbench
