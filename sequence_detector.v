module sequence_detector (z,w,clk);
output reg z;
input w,clk;
reg [0:3] state, nextstate;
initial 
begin
state=4'b0000; nextstate=4'b0000;
end
always @(state,w)
begin 
case (state)

//A
4'b0000: begin
if (w===1)
nextstate=4'b0101;
else if (w===0)
nextstate=4'b0001;
z=0;
end

//B
4'b0001: begin
if (w===1)
nextstate=4'b0101;
else if (w===0)
nextstate=4'b0010;
z=0;
end

//C
4'b0010: begin
if (w===1)
nextstate=4'b0101;
else if (w===0)
nextstate=4'b0011;
z=0;
end

//D
4'b0011: begin
if (w===1)
nextstate=4'b0101;
else if (w===0)
nextstate=4'b0100;
z=0;
end

//E
4'b0100: begin
if (w===1)
nextstate=4'b0101;
else if (w===0)
nextstate=4'b0100;
z=1;
end

//F
4'b0101: begin
if (w===1)
nextstate=4'b0110;
else if (w===0)
nextstate=4'b0001;
z=0;
end

//G
4'b0110: begin
if (w===1)
nextstate=4'b0111;
else if (w===0)
nextstate=4'b0001;
z=0;
end

//H
4'b0111: begin
if (w===1)
nextstate=4'b1000;
else if (w===0)
nextstate=4'b0001;
z=0;
end

//I
4'b1000: begin
if (w===1)
nextstate=4'b1000;
else if (w===0)
nextstate=4'b0001;
z=1;
end

default:
begin
nextstate = 4'b0000;
end
endcase
end

always @(posedge clk)
begin
state <= nextstate;
end
endmodule