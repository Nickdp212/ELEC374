`timescale 1ns / 1ps

module mar(
	input wire clr, clk, MARin,
	input wire [31:0] BusMuxOut,
	output [8:0] q
);
		
	wire [31:0] data_out;
	Register	MAR(clr, clk, MARin,BusMuxOut, data_out);
	
	assign q = data_out[8:0];
	
endmodule
