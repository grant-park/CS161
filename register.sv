module register(input logic [31:0] D, output logic [31:0] Q, 
	input logic clock);
	
   // This initializes the register to 0.  This is cheating - it doesn't turn into hardware and would not
   // work in hardware, but it simplifies simulation
   
   initial
     Q = 32'b0;

// the always clause that follows happens on the posiitve edge of the clock
    	
   always @ (posedge clock)
     begin
	$display("register transfer %d replaces %d ",D, Q);
	Q = D;
     end
   
endmodule