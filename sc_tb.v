`include "sc.v"

`timescale 1ns/1ps

module sc_tb();

reg clock;
reg enable;
reg reset;

wire[3:0] counter;

always #10 clock = ~clock;

  sc counter_test(.clk(clock), .en(enable), .reset(reset), .r_reg(counter[3:0]));

initial
	$display("time \t\t clk \t en \t reset \t counter",);
	$monitor("%4d ns \t %b \t %b \t %b \t %b",$time, clock, enable, reset,counter);
  
	clock = 0;
	enable = 0;
	reset = 1;

	#20  enable = 1; reset = 0;
	#100 enable = 1; reset = 1;
	#10  enable = 1; reset = 0;
	#10  enable = 0; reset = 0;
	#40  enable = 1; reset = 0;
	#400 $finish;
end
endmodule
