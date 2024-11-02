module seq_det_gatelvl_tb;
  reg w;
  reg clk;
  reg rst;
  wire z;

  seq_det_gatelvl uut (
    .z(z),
    .w(w),
    .clk(clk),
    .rst(rst)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end

  initial begin
  
    w = 0;
    rst = 1;       

    #10 rst = 0;   

    #10 w = 1;     
    #10 w = 0;
    #10 w = 1;
    #10 w = 1;
    #10 w = 1;
    #10 w = 1;
    #10 w = 0;
    #10 w = 0;
    #10 w = 0;
    #10 w = 0;
    #10 w = 1;
    #10 w = 1;
    #10 w = 0;
	#20 rst = 1;
   #10 rst = 0;
    #10 w = 1;
    #10 w = 0;
  
    #30 $finish;
  end
  initial begin
    $monitor("Time=%0t | w=%b | rst=%b | z=%b | Current State=%b", $time, w, rst, z, uut.cs);
  end

endmodule
