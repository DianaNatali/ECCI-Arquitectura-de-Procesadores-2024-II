`include "sum1b.v"
module sum4b(A, B, Ci, S, Co);

input [3:0] A;
input [3:0] B;
input Ci;

output [3:0] S;
output Co;

wire c1, c2, c3;

sum1b sum0(.A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(c1));
sum1b sum1(.A(A[1]), .B(B[1]), .Ci(c1), .S(S[1]), .Co(c2));
sum1b sum2(.A(A[2]), .B(B[2]), .Ci(c2), .S(S[2]), .Co(c3));
sum1b sum3(.A(A[3]), .B(B[3]), .Ci(c3), .S(S[3]), .Co(Co));


endmodule