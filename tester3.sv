`timescale 1 ns/1 ns

module tester3;

logic [31:0] pcQ, pcD,instruction;
logic clock;

int clockCount;

Lab8B dut (clock, pcQ, instruction,pcD);

// start a clock with a counter of clock cycle
   

always 
	begin
	clock <= 0;
	#20;
	clock <= 1;
	#20;
	clockCount <= clockCount + 1;
	end

// set up debugging display and a way to end the simulation
// you can add to this
       
always @ (negedge clock) begin 
	$display("PC Address : %h",pcQ);
	$display("PC D: %h ",pcD);
	$display("Instruction : %h", instruction);

	if (clockCount == 5)
		begin
		$display("Simulation ending after %d clock cycles ",clockCount);
		$stop;
		end
end // always

endmodule