`include "decoder.v"

module decoder_tb();

	reg[3:0] i_reg;
	wire[15:0] o_reg;

	reg clock;

	always #10 clock = ~clock;

	always@(posedge clock) i_reg = i_reg + 1;

	decoder test(.ilines(i_reg), .Tsig(o_reg));


	initial
	begin
		clock = 0;
		i_reg = 0;
		$display("time \t\t clk \t input \t output");
		$monitor("%4d ns \t %b \t %b \t %b",$time, clock, i_reg, o_reg);
	
		#320 $finish;
	end

	

endmodule
