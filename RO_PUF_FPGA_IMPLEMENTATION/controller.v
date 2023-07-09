module controller(clk,rst,rs1,en1);
input clk,rst;
reg [22:0]counter2=23'd0;
reg new_clk=0;
reg [3:0] state;
output  rs1,en1;
reg [2:0] count=3'd7;
reg [5:0] ct=6'd1;
wire [5:0] ctbar;
wire out;
//parameter Idle =4'd0,S1 = 4'd1,S2=4'd2,S3=4'd3,S4=4'd4,stop=4'd5;


always @(posedge clk) begin
counter2=counter2+23'd1;
if (counter2 == 23'd8000000) begin
new_clk<= ~new_clk;
counter2 <= 0;
end
end

assign ctbar=~ct;
assign out=new_clk&&ctbar;

always@(posedge out or posedge rst)
begin
if(rst==1)
ct=6'd1;
else
ct=ct+6'd1;
end

assign en1=((ct==6'd6)||(ct==6'd14)||(ct==6'd20)||(ct==6'd26)||(ct==6'd32)||(ct==6'd40)||(ct==6'd46)||(ct==6'd52))?1'b1:1'b0;
assign rs1=((ct==6'd9)||(ct==6'd17)||(ct==6'd23)||(ct==6'd29)||(ct==6'd35)||(ct==6'd43)||(ct==6'd49)||(ct==6'd55))?1'b1:1'b0;
/*
always@(posedge new_clk or posedge rst)
if(rst==1)
begin
state<=Idle;
rs1<=1'b0;
en1<=1'b0;
//re1<=1'b0;
end
else
begin
case(state)
Idle:begin
//re1<=1'b0;
rs1<=1'b1;
en1<=1'b0;
state<=S1;
end

S1:begin
state<=S2;
//re1<=1'b0;
rs1<=1'b0;
en1<=1'b1;
end

S2:begin
state<=S3;
en1<=1'b0;
rs1<=1'b0;
//re1<=1'b1;
end

S3:begin
state<=S4;
//re1<=1'b0;
en1<=1'b0;
rs1<=1'b1;
end

S4:begin
if(count==3'd0)
state<=stop;
else
begin
state<=S2;
rs1<=1'b0;
en1<=1'b1;
//re1<=1'b0;
count<=count-3'd1;
end
end

stop:
begin
en1<=1'b0;
rs1<=1'b0;
//re1<=1'b0;
count<=3'd7;
end
endcase
end
*/
endmodule


