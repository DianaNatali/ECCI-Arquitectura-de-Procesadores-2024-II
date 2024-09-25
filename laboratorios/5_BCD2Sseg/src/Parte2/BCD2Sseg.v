
module BCD2Sseg (
    input      [3:0] BCD, 
    output reg [6:0] Sseg
);
  
  
    always @(*) begin
        case (BCD)
            4'b0000: Sseg = 7'b0000001; // "0"  
            4'b0001: Sseg = 7'b1001111; // "1" 
            4'b0010: Sseg = 7'b0010010; // "2" 
            4'b0011: Sseg = 7'b0000110; // "3" 
            4'b0100: Sseg = 7'b1001100; // "4" 
            4'b0101: Sseg = 7'b0100100; // "5" 
            4'b0110: Sseg = 7'b0100000; // "6" 
            4'b0111: Sseg = 7'b0001111; // "7" 
            4'b1000: Sseg = 7'b0000000; // "8"  
            4'b1001: Sseg = 7'b0000100; // "9" 
            4'ha: Sseg = 7'b0001000;    // "A" 
            4'hb: Sseg = 7'b1100000;    // "B" 
            4'hc: Sseg = 7'b0110001;    // "C" 
            4'hd: Sseg = 7'b1000010;    // "D" 
            4'he: Sseg = 7'b0110000;    // "E" 
            4'hf: Sseg = 7'b0111000;    // "F" 
            default:
                Sseg = 7'b0;
        endcase
    end
  
endmodule