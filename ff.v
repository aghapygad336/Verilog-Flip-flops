module ff (d,ck,clr,en,q);
    input d,ck,clr,en;
    output  reg q;
    always@(posedge clk)
        begin 
            if(clr)
                q <=0;
            else if (en)
                q<=d;
        end
    always@(posedge clr)
        begin 
            if(clr) begin 
                q<=0;
            end
        end 
endmodule                
