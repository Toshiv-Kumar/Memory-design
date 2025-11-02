`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2025 16:45:14
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB();
    integer i=0, j=0;
  reg clka=0;
  reg wea=0;
  reg [7:0]addra;
  reg [7:0]dina;
  reg clkb=0;
  reg [7:0]addrb;
  wire [7:0]doutb;
  ram dut(clka,
	clkb,
	wea, // 1 then write, 0 then read
	addra, 
	addrb, //address bus
	dina, // input data bus
	doutb );
	always #5 clka=~clka;
	always #5 clkb=~clkb;
	
	
	
	task write_ram;
	begin
	wea=1;
	   for (i=0; i<10;i=i+1) begin
	       @(negedge clka);
	       dina=$urandom();
	       addra=i;
	       
	   
	   
	   end
	   wea=0;
	end
	endtask
	
	task read_write_both;
	begin
	wea=1;
	for (j=0; j<5;j=j+1) begin
	   @(negedge clkb);
	   addrb=j+1;
	   dina=j;
	   addra=j;
	   
	end
	wea=0;
	end
	endtask
	
	initial begin
	#1 write_ram();
	read_write_both();
	end
endmodule
