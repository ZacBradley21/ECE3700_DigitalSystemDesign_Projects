`timescale 1ns / 1ps

module testbench();

    reg clk;
    reg rst;
    reg btn1;
    reg [3:0] row;
    reg [7:0] volume;
    wire [3:0] col;
    wire led;
    wire AIN;
    wire GAIN;
    wire SHUTDOWN_L;

    // Instantiate the keyboard_audio module
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

       integer clk_count = 0;

      always @(posedge clk) begin
      clk_count <= clk_count + 1;
      
      if (clk_count == 1000) begin
     $finish;
      end
   end

    initial begin
      //Initialize inputs
        clk = 0;
        rst = 1;
        btn1 = 0;
        volume = 8'b00000001;
        row = 4'b1110;
    end

initial forever #10 clk = ~clk;

    // Monitor outputs
    initial begin
            $monitor("At time %d, row = %b, col = %b, AIN = %b,  keys = %b", 
            clk_count, row, DUT.kypd.col, AIN, DUT.keypad);
    end

endmodule