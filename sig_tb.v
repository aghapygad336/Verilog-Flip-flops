`include "signals.v"

module signals_tb();
	reg clock;
	reg reset;
	reg enable;
	
	wire[15:0] result;

	always #10 clock = ~clock;


	signals top_module(.reset(reset), .en(enable),
					   .clk(clock), .dec_signal(result));


	initial
	begin
		clock = 0;
		reset = 0;
		enable = 0;
		$display("time \t\t clk \t reset \t output");
		$monitor("%4d ns \t %b \t %b \t %b",$time, clock, reset, result);
	
		#10 reset = 1;
		#10 enable = 1;

		#320 $finish;
	end
endmodule
