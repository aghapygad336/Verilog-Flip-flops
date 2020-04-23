`include "decoder.v"
`timescale 1ns / 1ps


module sevenSegmentDecoder_tb();

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [6:0] seg;

	// Instantiate the Unit Under Test (UUT)
	sevenSegmentDecoder uut (
		.bcd(bcd), 
		.seg(seg)
	);

	initial begin
	
		$monitor("Value of BCD=%d,SEG=%b",bcd,seg);
		bcd = 4'd1;
		#10
	   bcd = 4'd5;
		#10
		bcd = 4'd9;
		#10
		bcd = 4'd0;
		#10
		bcd = 4'd15;

		
	end
      
endmodule
