`timescale 1 ns/1 ns

module tester4;

logic C1, C0;
logic [31:0] addr, Read;
   logic     clk;
   logic [31:0] writeData;
   logic 	writeEnable;
   
dataMemory2 dut (addr, Read, writeData, clk, writeEnable);

initial begin 
   addr <= 32'b10;
   clk <= 0;
   writeEnable <= 0;
   writeData <= 97;
   

#5;
$display("Addr: %b Read is %b",addr, Read);
# 20;
   writeEnable <= 1;
   # 5;
   clk <= 1;
   #5
     clk <= 0;
#5;
   
$display("Addr: %b Read is %b",addr, Read);
#20;

end

endmodule