`timescale 1ns / 1ps
module sc #( parameter n=4)(
input clk, en,reset,
  output reg [n-1:0] r_reg );
  always @(posedge clk , posedge reset)
    
    if (reset)
     r_reg <=0;
    else if(en)
      r_reg<=r_reg+1 ; 
  
endmodule
