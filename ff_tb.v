
`include "ff.v"
module ff_tb ();
reg d_in;
reg clear_;
reg enable_;
reg clock;
wire  q_outer;

alwayes #10 clock=~clock;
ff flag(.d(d_in),
.clk(clock),
.clr(clear_),
.en(enable_),
.q(q_outer)
);
initial 
begin
    enable_=0;
    clock=0;
    clear_=1;
    $display("time\t clock \t clear \tenable \t FlipFlop \t Output");
    $monitor(clock,clear_,enable_,d_in,q_outer);
    #20 enable_ = 1;
    #20 clear =0;
    #20 d_in =1;
    #20 d_in=0;
    #20 enable_=0;
    #20 clear =0;
    #20 d_in =1;
    #20 d_in=0;
end
endmodule
