`include "sum4b.v"
`timescale 1ns/1ns

module sum4b_tb();

    reg [3:0] A_tb;
    reg [3:0] B_tb;
  
    wire Cout_tb;
    wire [3:0] Sum_tb;
  
    // Instantiate the Unit Under Test (UUT)
    sum4b uut (
      .A(A_tb), 
      .B( B_tb), 
      .Cout(Cout_tb), 
      .Sum(Sum_tb)
    );
  
  initial begin
    A_tb=0;
    for ( B_tb = 0;  B_tb < 15;  B_tb =  B_tb + 1) begin
      if ( B_tb==0) begin
        A_tb=A_tb+1;
      end
      #5 $display("el valor de %d + %d = %d", A_tb, B_tb,Sum_tb);
    end
    $finish;
  end      

  initial begin: TEST_CASE
		$dumpfile("sum4b_tb.vcd");
		$dumpvars(-1, uut);
	end
  
  endmodule
  