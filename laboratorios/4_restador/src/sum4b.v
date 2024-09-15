`include "sum1b.v"

module sum4b (
        input  [3:0] A,
        input  [3:0] B,
        inout        Ci,
        output       Co,
        output [3:0] So
    );

  wire c1,c2,c3;

  sum1b s0 (.A(A[0]), .B(B[0]), .Ci(Ci),  .Co(c1) ,.So(So[0]));
  sum1b s1 (.A(A[1]), .B(B[1]), .Ci(c1), .Co(c2) ,.So(So[1]));
  sum1b s2 (.A(A[2]), .B(B[2]), .Ci(c2), .Co(c3) ,.So(So[2]));
  sum1b s3 (.A(A[3]), .B(B[3]), .Ci(c3), .Co(Co) ,.So(So[3]));

endmodule
