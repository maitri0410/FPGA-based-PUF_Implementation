
module counter(in1,in2,out1,out2,rst,en);
input in1,in2,rst,en;
reg[7:0] count1=8'd0,count2=8'd0;
output reg[7:0] out1=8'd0,out2=8'd0;

always@(posedge in1 or posedge rst or negedge en)
begin
if(rst==1)
begin
count1<=8'd0;
out1<=8'd0;
end
else if(en==0)
out1<=count1;
else
count1<=count1+8'd1;
end

always@(posedge in2 or posedge rst or negedge en)
begin
if(rst==1)
begin
count2<=8'd0;
out2<=8'd0;
end
else if(en==0)
out2<=count2;
else
count2<=count2+8'd1;
end
endmodule


