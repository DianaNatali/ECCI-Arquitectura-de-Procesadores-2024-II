`timescale 1ns / 1ps
`include "mult.v"

module mult_tb(); 

	reg clk;
    reg init;
	reg [2:0] MR;
	reg [2:0] MD;

	wire [5:0] pp;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	multiplicador uut (
        .clk(clk), 
		.MR(MR), 
		.MD(MD), 
		.init(init), 
		.pp(pp), 
		.done(done)
	);

	always #1 clk = ~clk;
	
	initial begin
        clk = 1'b0;
        MR = 3'b0;
        MD = 3'b0;
		init = 0;
	    #10; 
		init = 0;
		MD = 101;
		MR = 111;
		#10;
		init = 1;
	end

    initial begin: TEST_CASE
		$dumpfile("mult_tb.vcd");
		$dumpvars(-1, uut);
		#100 $finish;
	end
	
	
endmodule
