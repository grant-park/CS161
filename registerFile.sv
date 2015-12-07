/* The beginning of a register set */

module registerFile(input logic [4:0] readChoose, 
		input logic [4:0] writeChoose,
		input logic clk,
		input logic writeEnable,
		input logic [31:0] writeData,
		output logic [31:0] read);
		
		logic yesWrite0;
		logic yesWrite1;
		logic [31:0] reg0, reg1;
		
		initial begin
		reg0 = 32'b0;
		reg1 = 32'b0;
		end
		
		logic [31:0] writeData1, writeData0;
		
		assign yesWrite1 = writeEnable & writeChoose[0];
		assign yesWrite0 = writeEnable & (~writeChoose[0]);
		
		multi2C32O mux0(1'b0,yesWrite0,reg0,reg0,writeData,reg0,writeData0);
		multi2C32O mux1(1'b0,yesWrite1,reg1,reg1,writeData,reg1,writeData1);

		
		register r0(writeData0,reg0,clk);
		register r1(writeData1,reg1,clk);
		
		multi2C32O mpx(1'b0,readChoose[0],reg1,reg0,reg1,reg0,read);

   always @ (negedge clk)
     begin
	$display("register 0 %h ",reg0);
	$display("register 1 %h ",reg1);
	end
		
		endmodule
		
		
	