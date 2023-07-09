module comp(count1,count2,countf,en,rst);
 reg count;
input [7:0] count1;
input [7:0] count2;
input en,rst;
output reg [7:0]countf=8'd0;
//output reg [7:0] countout;
reg [2:0] index=3'd0;
always@(*)
begin
if(count1>count2)
begin
count=1'b1;
end
else
begin
count=1'b0;
end
end


always@(negedge en or posedge rst)
begin
if(rst==1)
begin
countf=8'd0;
index=3'd0;
end
else if(en==0)
begin
countf[index]=count;
index=index+3'd1;
end
end

endmodule