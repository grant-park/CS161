
module controlUnit(input logic  [5:0] op,

	output logic memwrite,
	output logic regwrite);

   assign memwrite = op[0] & op[1] & ~op[2] & op[3] & ~op[4] & op[5];
	assign regwrite = op[0] & op[1] & ~op[2] & ~op[3] & ~op[4] & op[5];

	endmodule
