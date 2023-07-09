module arbiter_puf(en,c,Q,rst);
(*keep=1*)input en;
input rst;
(*keep=1*)input [7:0]c;
output [7:0]Q;
arbiter A0(en,en,c, Q[0],rst);
arbiter A1(en,en,c, Q[1],rst);
arbiter A2(en,en,c, Q[2],rst);
arbiter A3(en,en,c, Q[3],rst);
arbiter A4(en,en,c, Q[4],rst);
arbiter A5(en,en,c, Q[5],rst);
arbiter A6(en,en,c, Q[6],rst);
arbiter A7(en,en,c, Q[7],rst);
endmodule
