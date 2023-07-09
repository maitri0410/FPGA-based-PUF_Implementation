module top(clk,rst,countf,challenge,count2,count1);
input clk,rst;
input [7:0] challenge;
output [7:0] countf;
output [7:0] count1;
output [7:0] count2;
wire rs1,en1;
wire[7:0]sel;
(*keep=1*)wire [7:0] din1,din2;
wire out1,out2;

controller cont1(clk,rst,rs1,en1);
shifter sh1(challenge,sel,en1,rst);
mux_ro(en1,din1,din2);

mux_8x1 mux1(din1,sel[2:0],out1);
mux_8x1 mux2(din2,sel[5:3],out2);

counter count(out1,out2,count1,count2,rs1,en1);
comp compare(count1,count2,countf,en1,rst);
endmodule

