module mux_2x1(i0,i1,y,s0);
(*keep=1*)input i0,i1,s0;
 (*keep=1*)output  y;
assign y=s0?i1:i0;
endmodule 