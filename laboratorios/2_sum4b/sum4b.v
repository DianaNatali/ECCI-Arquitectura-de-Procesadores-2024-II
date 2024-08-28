`include "sum1b.v"

module sum4b (
        input  [3:0] A,
        input  [3:0] B,
        output       Cout,
        output [3:0] Sum
    );

  wire c1,c2,c3;
  wire c_out; 


  sum1b s0 (.A(xi[0]), .B(yi[0]), .Ci(1'b0),  .Cout(c1) ,.Sum(Sum[0]));
  sum1b s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2) ,.Sum(Sum[1]));
  sum1b s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(c3) ,.Sum(Sum[2]));
  sum1b s3 (.A(xi[3]), .B(yi[3]), .Ci(c3), .Cout(co) ,.Sum(Sum[3]));

endmodule
