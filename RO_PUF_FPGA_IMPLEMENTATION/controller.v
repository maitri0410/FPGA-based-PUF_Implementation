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

endmodule


