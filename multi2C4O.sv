module multi2C4O (input logic C1, input logic C0, input logic [3:0] I3, 
	input logic[3:0] I2, input logic [3:0] I1, 
	input logic [3:0] I0, output logic [3:0] O);

	integer i;
	
	multi2C1O m0(C1,C0,I3[0],I2[0],I1[0],I0[0],O[0]);
	multi2C1O m1(C1,C0,I3[1],I2[1],I1[1],I0[1],O[1]);
	multi2C1O m2(C1,C0,I3[2],I2[2],I1[2],I0[2],O[2]);
	multi2C1O m3(C1,C0,I3[3],I2[3],I1[3],I0[3],O[3]);


endmodule