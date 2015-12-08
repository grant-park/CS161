
module controlUnit(input logic  [5:0] op,

	output logic MemtoReg,
	output logic Branch,
	output logic [2:0]ALUControl,
	output logic ALUSrc,
	output logic RegDst,
	output logic memwrite,
	output logic regwrite);

   always_comb
	 	case(op)
		//Add - Need to figure out how to indicate the opcodes for cases
		6'b100000:
		//lw
		6'b100011:
		//sw
		6'b101011:
		//jr
		6'b001000:
		//jal
		6'b000011:
		/xor
		6'b100110:
		//xori
		6'b001110:
		//neg
		6'b000100:
		//beqz
		6'b010000:
		//sll
		6'b000000:
		/srl
		6'b000010:


	endmodule
