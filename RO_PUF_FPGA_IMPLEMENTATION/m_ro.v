module m_ro(en,nc);
input en;
output reg nc=0;
(*keep=1*)  wire out;
(*keep=1*)wire i0=1'b0;
(*keep=1*)wire i1=1'b1;
(*keep=1*)wire [39:0]w;
reg [9:0]counter2=10'd0;

mux_2x1 m0(i1,i0,w[39],out);
mux_2x1 m1(i1,w[39],w[0],en);
mux_2x1 m2(i0,i1,w[1],w[0]);
mux_2x1 m3(i0,i1,w[2],w[1]);
mux_2x1 m4(i0,i1,w[3],w[2]);
mux_2x1 m5(i0,i1,w[4],w[3]);
mux_2x1 m6(i0,i1,w[5],w[4]);
mux_2x1 m7(i0,i1,w[6],w[5]);
mux_2x1 m8(i0,i1,w[7],w[6]);
mux_2x1 m9(i0,i1,w[8],w[7]);
mux_2x1 m10(i0,i1,w[9],w[8]);
mux_2x1 m11(i0,i1,w[10],w[9]);
mux_2x1 m12(i0,i1,w[11],w[10]);
mux_2x1 m13(i0,i1,w[12],w[11]);
mux_2x1 m14(i0,i1,w[13],w[12]);
mux_2x1 m15(i0,i1,w[14],w[13]);
mux_2x1 m16(i0,i1,w[15],w[14]);
mux_2x1 m17(i0,i1,w[16],w[15]);
mux_2x1 m18(i0,i1,w[17],w[16]);
mux_2x1 m19(i0,i1,w[18],w[17]);
mux_2x1 m20(i0,i1,w[19],w[18]);
mux_2x1 m21(i0,i1,w[20],w[19]);
mux_2x1 m22(i0,i1,w[21],w[20]);
mux_2x1 m23(i0,i1,w[22],w[21]);
mux_2x1 m24(i0,i1,w[23],w[22]);
mux_2x1 m25(i0,i1,w[24],w[23]);
mux_2x1 m26(i0,i1,w[25],w[24]);
mux_2x1 m27(i0,i1,w[26],w[25]);
mux_2x1 m28(i0,i1,w[27],w[26]);
mux_2x1 m29(i0,i1,w[28],w[27]);
mux_2x1 m30(i0,i1,w[29],w[28]);
mux_2x1 m31(i0,i1,w[30],w[29]);
mux_2x1 m32(i0,i1,w[31],w[30]);
mux_2x1 m33(i0,i1,w[32],w[31]);
mux_2x1 m34(i0,i1,w[33],w[32]);
mux_2x1 m35(i0,i1,w[34],w[33]);
mux_2x1 m36(i0,i1,w[35],w[34]);
mux_2x1 m37(i0,i1,w[36],w[35]);
mux_2x1 m38(i0,i1,w[37],w[36]);
mux_2x1 m39(i0,i1,w[38],w[37]);
mux_2x1 m40(i0,i1,out,w[38]);


always @(posedge out) begin
counter2=counter2+10'd1;
if (counter2 == 10'd700) begin
nc<= ~nc;
counter2 <= 0;
end
end

endmodule





























































































































