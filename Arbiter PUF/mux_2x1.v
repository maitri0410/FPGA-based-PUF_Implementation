module mux_2x1(i0,i1,y,s);
input i0,i1,s;
output y;
assign y=s?i1:i0;
endmodule


/*module mux_2x1(
    input A,
    input B,
    output D,
	 input S
    );
    
    wire SN, SA, SB;
    
    not N1(SN, S);
    and A1(SA, A, S);
    and A2(SB, B, SN);
    or  O1(D, SA, SB);
endmodule
*/