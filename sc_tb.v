 `include "sc.v"
`timescale 1ns / 1ps
module sc_tb();
  reg clock;
  reg rst;
  reg enable;
  wire [3:0] counter;
  
  
  always #10 clock =~clock;
  sc U0(.en(enable),.clk(clock),.reset(rst),.r_reg(counter[3:0]));
  initial
    begin
      $display("time \t\t clk \t en \t rst\t counter");
      $monitor("%4d ns  \t %b\t %b\t %b\t %b",$time,clock,enable,rst,counter);
      clock=0;
      enable=0;
      rst=1;
     
      
      #20 enable=1; rst=0;
      #20 enable=1; rst=1;
      #20 enable=1; rst=0;
      #20 enable=0; rst=0;
      #20 enable=1; rst=0;
      
      #100 $finish;
      
      
    end
endmodule
