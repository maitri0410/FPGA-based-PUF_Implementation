(*keep=1*)module arbiter(X,Y,S,Q,rst);
input X,Y,rst;
input[7:0]S;
output Q;
(*keep=1*) wire [7:0]W,Z;
arbel A0(X,Y,S[0],W[0],Z[0]);
arbel A1(W[0],Z[0],S[1],W[1],Z[1]);
arbel A2(W[1],Z[1],S[2],W[2],Z[2]);
arbel A3(W[2],Z[2],S[3],W[3],Z[3]);
arbel A4(W[3],Z[3],S[4],W[4],Z[4]);
arbel A5(W[4],Z[4],S[5],W[5],Z[5]);
arbel A6(W[5],Z[5],S[6],W[6],Z[6]);
arbel A7(W[6],Z[6],S[7],W[7],Z[7]);
dflipflop d1(W[7],Z[7],rst,Q);
endmodule


