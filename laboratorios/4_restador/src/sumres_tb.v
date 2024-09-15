`include "restador.v"
`timescale 1ns/1ns

module sumres_tb();

reg [3:0] A_tb;
reg [3:0] B_tb;
reg sel_tb;


restador uut(
    .A(A_tb),
    .B(B_tb),
    .sel(sel_tb)
);

initial begin
A_tb = 4'b1000;
B_tb = 4'b0010;
sel_tb = 1;
#1;
A_tb = 4'b0010;
B_tb = 4'b0001;
#1;
A_tb = 4'b0111;
B_tb = 4'b0011;
#1;
A_tb = 4'b1001;
B_tb = 4'b0010;
#1;
A_tb = 4'b1111;
B_tb = 4'b1111;
#1;
A_tb = 4'b0001;
B_tb = 4'b0010;
#1;
A_tb = 4'b0011;
B_tb = 4'b0101;
#1;
A_tb = 4'b0111;
B_tb = 4'b1010;
#1;
A_tb = 4'b1111;
B_tb = 4'b1110;
#1;
A_tb = 4'b0000;
B_tb = 4'b0001;
#1;



//sel_tb = 0;
A_tb = 4'b0001;
B_tb = 4'b0001;
#1;
A_tb = 4'b0011;
B_tb = 4'b0011;
#1;
A_tb = 4'b1001;
B_tb = 4'b0010;
#1;
A_tb = 4'b1111;
B_tb = 4'b1111;
#1;
A_tb = 4'b1111;
B_tb = 4'b1111;
#1;
end

initial begin: TEST_CASE
    $dumpfile("sumres_tb.vcd");
    $dumpvars(-1, uut);
    #20 $finish;
end

endmodule