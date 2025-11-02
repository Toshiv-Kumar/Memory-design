module ram(
	input clka,
	input clkb,
	input wea, // 1 then write, 0 then read
	input [7:0] addra, 
	input [7:0]addrb, //address bus
	input [7:0] dina, // input data bus
	output [7:0] doutb // output data bus
);

  blk_mem_gen_0 b1 (
  .clka  (clka),
  .wea   (wea),
  .addra (addra),
  .dina  (dina),
  .clkb  (clkb),
  .addrb (addrb),
  .doutb (doutb)
);
endmodule
