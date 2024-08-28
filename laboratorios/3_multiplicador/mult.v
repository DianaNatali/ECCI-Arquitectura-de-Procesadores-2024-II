module multiplicador(
        input clk,
        input init,    
        input [2:0] MR, 
		input [2:0] MD, 
        output reg done,
		output reg [5:0] pp
    );

    reg sh;
    reg rst;
    reg add;
    reg [5:0] A;
    reg [2:0] B;
    wire z;

    reg [2:0] status;

    // Estados de la FSM 
    parameter START = 0, CHECK = 1, ADD = 2, SHIFT = 3, END1 = 4;

    initial begin
        status = START;
        rst = 1'b0;
        pp = 6'b0;
        A = 6'b0;
        B = 3'b0; 
    end

    always @(negedge clk) begin
	    case (status)
	        START: begin
	        	sh <= 1'b0;
	        	add <= 1'b0;
	        	if (init) begin
	        	    status <= CHECK;
	        	    done <= 1'b0;
	        	    rst <= 1'b1;
	        	end
	        end
	        CHECK: begin 
	        	done <= 1'b0;
	        	rst <= 1'b0;
	        	sh <= 1'b0;
	        	add <= 1'b0;
	        	status <= (B[0]==1)? ADD : SHIFT;
	        end
	        ADD: begin
	        	done <= 1'b0;
	        	rst <= 1'b0;
	        	sh <= 1'b0;
	        	add <= 1'b1;
	        	status <= SHIFT;
	        end
	        SHIFT: begin
	        	done <= 1'b0;
	        	rst <= 1'b0;
	        	sh <= 1'b1;
	        	add <= 1'b0;
	        	status <= (z==1)? END1 : CHECK;
	        end
	        END1: begin
	        	done <= 1'b1;
	        	rst <= 1'b0;
	        	sh <= 1'b0;
	        	add <= 1'b0;
	        	status <= START;
	        end
	        default: status <= START;
	    endcase 
    end 

    //bloques de registros de desplazamiento para A y B
    always @(posedge clk) begin
    	if (rst) begin
    		A <= {3'b000,MD};
    		B <= MR;
    	end
    	else begin 
    		if (sh) begin
    			A <= A << 1;
    			B <= B >> 1;
    		end
    	end
    end 

    //bloque de suma de productos parciales (pp)
    always @(posedge clk) begin
    	if (rst) begin
    		pp <= 6'b0;
    	end
    	else begin 
    		if (add) begin
    		    pp <= pp + A;
    		end
    	end
    end

    // bloque comparador 
    assign z = (B==0)? 1'b1 : 1'b0;

endmodule