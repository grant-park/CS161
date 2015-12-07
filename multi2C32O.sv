//Grant Park and Hunter Voegele
module multi2C32O (input logic C1, input logic C0, input logic [31:0] I3, 
	input logic[31:0] I2, input logic [31:0] I1, 
	input logic [31:0] I0, output logic [31:0] O);

	multi2C8O m0(C1,C0,I3[7:0],I2[7:0],I1[7:0],I0[7:0],O[7:0]);
	multi2C8O m1(C1,C0,I3[15:8],I2[15:8],I1[15:8],I0[15:8],O[15:8]);
	multi2C8O m2(C1,C0,I3[23:16],I2[23:16],I1[23:16],I0[23:16],O[23:16]);
	multi2C8O m3(C1,C0,I3[31:24],I2[31:24],I1[31:24],I0[31:24],O[31:24]);

endmodule