module sum1b(
        input A, 
        input B, 
        input Ci,
        output Cout,
        output Sum
    );
  
    reg [1:0] result;
  
    assign Sum = result[0];
    assign Cout = result[1];
  
    always@(*) begin
      result = A+B+Ci;
    end
    
  endmodule