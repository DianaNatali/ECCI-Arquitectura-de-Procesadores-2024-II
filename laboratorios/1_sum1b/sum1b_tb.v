`include "sum1b_primitive.v"
`include "sum1b.v"

`timescale 1ns/1ns

module sum1b_tb();
	reg A_tb;
	reg B_tb;
	reg Ci_tb;
	
	wire Cout_tb;
	wire S_tb;
	
	// Instantiate the Unit Under Test (UUT)
	sum1b_primitive uut(
		.A(A_tb),
		.B(B_tb),
		.Ci(Ci_tb),
		.Cout(Cout_tb),
		.S(S_tb)
	);
	
	initial begin
		A_tb=0; B_tb=0; Ci_tb=0; #20;
      	A_tb=0; B_tb=0; Ci_tb=1; #20;
      	A_tb=0; B_tb=1; Ci_tb=0; #20;
      	A_tb=0; B_tb=1; Ci_tb=1; #20;
      	A_tb=1; B_tb=0; Ci_tb=0; #20;
      	A_tb=1; B_tb=0; Ci_tb=1; #20;
      	A_tb=1; B_tb=1; Ci_tb=0; #20;
        A_tb=1; B_tb=1; Ci_tb=1; #20;
	end

	
	initial begin: TEST_CASE
		$dumpfile("sum1b_tb.vcd");
		$dumpvars(-1, uut);
		#200 $finish;
	end

endmodule