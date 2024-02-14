`timescale 1ns/1ps

module sin_table
  #(
    parameter WIDTH=8,
    parameter DEPTH=256,
    parameter ADR_WIDTH=8
  )
  (
    input clk,
    input rd,
    //input wr,

    input      [ADR_WIDTH-1:0] addr,
    input      [WIDTH-1:0] d_in,
    output reg [WIDTH-1:0] d_out
  );

  reg [ADR_WIDTH-1:0] adr;
  real      sin_x, sin_y;

  // Get a new random adr every clk cycle:
  always @(posedge clk) begin
    adr = $random();
  end

  integer fid;
  initial begin
   fid = $fopen("sin_table.log","w");
  end

  // The Memory array:
  reg [WIDTH-1:0] ram[DEPTH-1:0];

  always @(posedge clk) begin
    if (rd) 
     d_out <= ram[adr];
    //if (wr)
     //ram[addr] <= d_in;
  end

  initial begin
    $readmemh("sin_table.dat", ram, 0, DEPTH-1);
  end

  // When d_out changes, display it:
  always @(d_out) begin
    sin_x = adr/255.0;
    sin_y = d_out/255.0;
    $write("adr %3d  d_out %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,d_out,sin_x, sin_y, $sin(3.14159*sin_x/2));
    $fwrite(fid,"adr %3d  d_out %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,d_out,sin_x, sin_y, $sin(3.14159*sin_x/2));
  end

endmodule

// module sin_table
//   #(
//      parameter DATA_WIDTH=8,
//      parameter ADDR_WIDTH=8
//   )
//   (
//      input clk,
//      input rd,
//      //input wr,

//      input      [ADDR_WIDTH-1:0] addr,
//      input      [DATA_WIDTH-1:0] d_in,
//      output reg [DATA_WIDTH-1:0] d_out
//   );

// reg [8:0] adr;
// real      sin_x, sin_y;

// // Get a new random adr every clk cycle:
// always @(posedge clk) begin
//    adr = $random();
// end

// integer fid;
// initial begin
//   fid = $fopen("sin_table.log","w");
// end

//   // The Memory array:
//   reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];

//   always @(posedge clk) begin
//      if (rd) 
//        d_out <= ram[addr];
//      //if (wr)
//        //ram[addr] <= d_in;
//   end

// initial begin
//    $readmemh("sin_table.dat", ram, 0, 255);
//   end

//   // When d_out changes, display it:
// always @(d_out) begin
//    sin_x = adr/255.0;
//    sin_y = d_out/255.0;
//    $write("adr %3d  d_out %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,d_out,sin_x, sin_y, $sin(3.14159*sin_x/2));
//    $fwrite(fid,"adr %3d  d_out %3d: sin(%1.3f)=%1.3f, should be %1.3f\n",adr,d_out,sin_x, sin_y, $sin(3.14159*sin_x/2));
// end

// endmodule