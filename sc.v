module sc #(parameter n = 4)(
	input clk, en,
	input reset,
	output reg[n-1:0] r_reg
	);
	always@(posedge clk, posedge reset)
		if(en)
			r_reg <= r_reg + 1;

		else if(reset)
			r_reg <= 0;

endmodule
