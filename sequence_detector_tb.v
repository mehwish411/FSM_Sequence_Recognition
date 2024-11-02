`timescale 1ns/1ps

module sequence_detector_tb;
  reg w, clk;
  wire z;

  sequence_detector uut (
    .z(z),
    .w(w),
    .clk(clk)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

 
  initial begin
    w = 0;
    #10 w = 0;
    #10 w = 0;
    #10 w = 0;
    #10 w = 0; 

   
    #10 w = 1;
    #10 w = 1;
    #10 w = 1;
    #10 w = 1;
    #10 w = 1; 
    #10 w = 0;
    #10 w = 1;
    #10 w = 0;
    #10 w = 1;    
    #20; 
    $stop;
  end

  initial begin
    $monitor("Time = %0t | clk = %b | w = %b | z = %b", $time, clk, w, z);
  end
endmodule

