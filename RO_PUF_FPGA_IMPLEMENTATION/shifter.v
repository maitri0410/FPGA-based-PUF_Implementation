module shifter(challenge,out,clk,rst);
input [7:0] challenge;
input clk,rst;
output reg [7:0] out;
always@(posedge clk or posedge rst)
begin
if(rst==1)
out<=challenge;
else
out<=out>>1;
end
endmodule
