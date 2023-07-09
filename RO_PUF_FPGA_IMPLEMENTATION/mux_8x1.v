module mux_8x1(in,sel,f);
input [7:0] in;
input [2:0] sel;
output reg f;
always@(*)
begin
case(sel)
3'b000:f=in[0];
3'b001:f=in[1];
3'b010:f=in[2];
3'b011:f=in[3];
3'b100:f=in[4];
3'b101:f=in[5];
3'b110:f=in[6];
3'b111:f=in[7];
endcase
end
endmodule
