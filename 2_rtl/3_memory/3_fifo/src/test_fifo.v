`timescale 1ns/1ps


module testbench();
   // Allow a maximum of 5 items
   parameter DEPTH=5;

   // Data comes in 8-bit words
   parameter WIDTH=8;

   reg      clk;

   // Transmit Interface
   reg               tx_rdy;
   wire              tx_done;
   reg [WIDTH-1:0]   in_data;

   // Receive Interface
   wire                 rx_rdy;
   reg                  rx_done;
   wire [WIDTH-1:0]     out_data;
   
   // Indicators
   wire empty;
   wire full;
   
   //open file for writing
   integer fid;
   initial fid = $fopen("lifo_test.txt", "w");
   
   stack DUT(
   .clk(clk),

   // Transmit Interface
   .tx_rdy(tx_rdy),
   .tx_done(tx_done),
   .in_data(in_data),

   // Receive Interface
   .rx_rdy(rx_rdy),
   .rx_done(rx_done),
   .out_data(out_data),
   
   // Indicators
   .empty(empty),
   .full(full)
);


   integer clk_count;
   reg 	   write;
   
   initial begin
      clk       = 0;
      tx_rdy    = 0;
      in_data   = $random();
      rx_done   = 0;
      write     = 1;
      
      clk_count = 0;
      
      forever #10 clk = ~clk;
      
   end

   always @(posedge clk) begin
      clk_count <= clk_count + 1;
      if (clk_count == 1)
	$display("============== PUSH DATA IN ===============");
      //$fwrite(fid, "============== PUSH DATA IN ===============\n");
      if (write) begin
	 if ((clk_count % 10) == 2) begin
	    tx_rdy = 1;
	    in_data = $random();
	    $display("%d in_data: %d tx_rdy done:%b count:%d front:%d back:%d",clk_count,
		     in_data,tx_done,DUT.count,DUT.front,DUT.back); 
       $fwrite(fid, "%d in_data: %d tx_rdy done:%b count:%d front:%d back:%d\n",clk_count,
		     in_data,tx_done,DUT.count,DUT.front,DUT.back);
	 end
	 if (tx_done) begin	 
	 //   $write("%d tx_done incr:%b decr:%b",clk_count, DUT.incr, DUT.decr);
	 //   $display(" buffer: %d %d %d %d %d", DUT.buffer[0], DUT.buffer[1],
	//	     DUT.buffer[2], DUT.buffer[3], DUT.buffer[4]);
	    
	    tx_rdy <= 0;
	 end
	 if (full) begin
	    write <= 0;
	    $display("%d buffer full",clk_count);	    
       //$fwrite(fid, "%d buffer full\n",clk_count);
	    $display("============== PULL DATA OUT ===============");
       //$fwrite(fid, "============== PULL DATA OUT ===============\n");
	 end
      end // if (write)
      else begin
	 if ((clk_count % 10) == 2) begin
	    if (rx_rdy) begin
	       rx_done = 1;
	       $display("%d out_data: %d rx_rdy:%b done count:%d front:%d back:%d",clk_count,
			out_data,rx_rdy,DUT.count,DUT.front,DUT.back);
         //$display("%d out_data: %d",clk_count,
			//DUT.buffer[DUT.front]);
          $fwrite(fid, "%d out_data: %d rx_rdy:%b done count:%d front:%d back:%d\n",clk_count,
         out_data,rx_rdy,DUT.count,DUT.front,DUT.back);
	    end
	 end
	 if (!rx_rdy) begin	 
//	    $display("%d rx_done incr:%b decr:%b rx_state:%d",clk_count, DUT.incr, DUT.decr,DUT.rx_state);
//     $fwrite(fid, "%d rx_done incr:%b decr:%b rx_state:%d",clk_count, DUT.incr, DUT.decr,DUT.rx_state);
//	    $display("%d buffer: %d %d %d %d %d", clk_count,DUT.buffer[0], DUT.buffer[1],
//		     DUT.buffer[2], DUT.buffer[3], DUT.buffer[4]);
//     $fwrite(fid, "%d buffer: %d %d %d %d %d", clk_count,DUT.buffer[0], DUT.buffer[1],
//         DUT.buffer[2], DUT.buffer[3], DUT.buffer[4]);
	    
	    rx_done <= 0;
	 end
	 if (empty)
	   $display("%d buffer empty",clk_count);
      //$fwrite(fid, "%d buffer empty\n",clk_count);
      end // else: !if(write)
      
      if ((!write && empty) || (clk_count > 100))
	$finish;
      
   end

endmodule // test_fifo
