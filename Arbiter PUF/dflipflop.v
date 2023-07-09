module dflipflop(
    input D,
    input Clk,
	 input rst,
    output reg Q
    );
    
always @ (posedge Clk or posedge rst)
begin
if(rst==1)
Q<=0;
else
Q <= D;
end
endmodule
