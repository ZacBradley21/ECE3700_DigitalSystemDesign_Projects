`timescale 1ns/1ps

// Use `defines for global parameters
`define K 7
`define W 2**`K-1

module testbench ();
   
   // DECLARE SIGNALS
   reg sel;
   reg  clk;     
   reg  [`K-1:0]  a;  // Narrow encoder input REG
   wire [`K-1:0]  q;  // Narrow output REG
   wire [`W-1:0]  b;  // Wide encoder output WIRE
   wire [`K-1:0]  c;  // Narrow decoder output WIRE
 
   integer clk_count = 0;   

   // GENERATE CLOCK:
   initial forever #10 clk = ~clk;

   //======================================
   // STRUCTURAL STATEMENTS" submodules, 
   // wire connections.
   //======================================
   thermometer_encoder TE1
     (
      .clk(clk),
      .a(a),  // input: 'reg' controlled by testbench
      .q(b)   // output: 'wire' controlled by encoder
      );
   
   thermometer_decoder TD1
     (
      .clk(clk),
      .a(b),  // input: 'wire' connected from encoder
      .q(c)   // output: 'wire' controlled by decoder
      );

   // Sub-module DEFPARAMS placed AFTER module instances:
   defparam TE1.K = `K;
   defparam TE1.W = `W;
   defparam TD1.K = `K;
   defparam TD1.W = `W;
   
   top DUT(
      .clk(clk),
      .sw(a),
      .sel(sel),
      .led(q)
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

endmodule
