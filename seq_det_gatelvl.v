module seq_det_gatelvl(z,w,clk,rst);
output z;
input w,clk,rst;
wire [8:0] cs, ns;

//combinational block for nextstate
assign ns[1]= ~w & (cs[0]|cs[5]|cs[6]|cs[7]|cs[8]);
assign ns[2]= ~w & (cs[1]);
assign ns[3]= ~w & (cs[2]);
assign ns[4]= ~w & (cs[3]|cs[4]);
assign ns[6]= w & (cs[5]);
assign ns[8]= w & (cs[7]|cs[8]);
assign ns[7]= w & (cs[6]);
assign ns[5]= w & (cs[0]|cs[1]|cs[2]|cs[3]|cs[4]);
//assign ns[0]= rst & (cs[7]|cs[6]|cs[5]|cs[4]|cs[3]|cs[2]|cs[1]|cs[8]);

//combinational block for output
assign z= w & (cs[4]|cs[8]);

//seq block 
dflipflop dff0(cs[0],ns[0],clk);
dflipflop dff1(cs[1],ns[1],clk);
dflipflop dff2(cs[2],ns[2],clk);
dflipflop dff3(cs[3],ns[3],clk);
dflipflop dff4(cs[4],ns[4],clk);
dflipflop dff5(cs[5],ns[5],clk);
dflipflop dff6(cs[6],ns[6],clk);
dflipflop dff7(cs[7],ns[7],clk);
dflipflop dff8(cs[8],ns[8],clk);

endmodule

module dflipflop(q,d,clk);
output reg q;
input d,clk;
initial
begin
q = 0;
end
always@(posedge clk)
begin
q <= d;
end
endmodule