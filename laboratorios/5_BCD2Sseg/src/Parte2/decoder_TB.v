`timescale 1ns / 1ps
`include "./decoder.v"

module decoder_TB;

	reg [15:0] num;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.num(num)
	);

	initial begin
		num = 16'd123; #10;
		
	end

    initial begin: TEST_CASE
        $dumpfile("decoder_TB.vcd");
	    $dumpvars(-1, uut);
        #(200) $finish;
    end

endmodule