module arbel(X,Y,C,W,Z);
(*keep=1*)input X,Y,C;
(*keep=1*)output W,Z;
//wire W1,Z1;
mux_2x1 M1(X,Y,W,C);
mux_2x1 M2(Y,X,Z,C);
//assign W=W1;
//assign Z=Z1;
endmodule
