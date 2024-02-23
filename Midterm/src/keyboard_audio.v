`timescale 1ns/1ps


module keyboard_audio (
   //Inputs and outputs for pwm_audio and debouncer module
	    input 	      clk,
	    input 	      rst,
       input         btn1,
	    input [7:0]   volume,
       output reg 	led,
	    output reg 	AIN,
	    output reg 	GAIN,
	    output reg 	SHUTDOWN_L,

   //Inputs and outputs for keypad module
       input  [3:0]  row,
       output [3:0]  col
	 );

   //Instantiate wires, assign statments, and registers
   wire              btn_db;
   wire              rst_l;
   wire [15:0] 		keypad;
   wire 		         rst_n;
   wire 		         sout; 
   assign rst_l =    ~rst;
   assign rst_n =    ~rst;
   reg               shutdown;
   reg [9:0] 	      N;

   //Initialize led to be off
   initial begin
      led <= 0;
   end

   //Debouncer module instantiation
   debouncer db1
     (
      .clk(clk),
      .rst_l(rst_l),
      .btn(btn1),
      .btn_db(btn_db)
      );

   //Always block to control the led and shutdown command for debouncer button
   always @(posedge clk, negedge rst_l) begin
      if (!rst_l) begin
        led <= 0;
      end
   //Toggle the led if the button is pressed to indicate shutdown is on, which turns off the audio output
      else begin
        if (btn_db) begin
          led <= ~led;
          shutdown <= led;
        end
      end
   end

   
//PWM audio module instantiation
   pwm_audio PWM1 (
		   .clk(clk),
		   .rst_n(rst_n),
		   .volume(volume),
		   .N(N),
		   .sout(sout)
		   );

//Initial values for the audio output and shutdown command
   initial begin
	 GAIN       <= 1;
	 SHUTDOWN_L <= 1;
	 AIN        <= 0;	 
   end

//Always block to initialize values for the audio output and shutdown command   
   always @(posedge clk) begin
      if (!rst_n) begin
	      GAIN       <= 1;
	      SHUTDOWN_L <= 1;
	      AIN        <= 0;	 
      end
   if (!shutdown && (keypad != 0)) begin
      AIN <= sout;
   end
	 else begin
      AIN <= 0;
    end
	 
//Case statment for the keypad to give the correct N value for the PWM audio module
	 case (keypad)
	   16'b0000000000000001: begin
		   N   <= 747;
      end
      16'b0000000000000010: begin
		   N   <= 665;
      end
      16'b0000000000000100: begin
		   N   <= 559;
	      end
      16'b0000000000001000: begin
		   N   <= 498;
	      end
      16'b0000000000010000: begin
		   N   <= 471;
	      end
      16'b0000000000100000: begin
		   N   <= 444;
	      end
      16'b0000000001000000: begin
         N   <= 395;
         end
      16'b0000000010000000: begin
         N   <= 373;
         end
      16'b0000000100000000: begin
         N   <= 332;
         end
      16'b0000001000000000: begin
         N   <= 296;
         end
      16'b0000010000000000: begin
         N   <= 264;
         end
      16'b0000100000000000: begin
         N   <= 236;
         end
      16'b0001000000000000: begin
         N   <= 222;
         end
      16'b0010000000000000: begin
         N   <= 198;
         end
      16'b0100000000000000: begin
         N   <= 177;
         end
      16'b1000000000000000: begin
         N   <= 166;
         end

//Default case gives no sound
      default: begin
         N   <= 0;
      end
	 endcase 
      end


//Keypad module instantiation
   keypad #(.N(300_000)) kypd
     (
      .clk(clk),
      .rst_l(rst_l),
      .row(row),
      .col(col),
      .keys(keypad)
      );
   
endmodule