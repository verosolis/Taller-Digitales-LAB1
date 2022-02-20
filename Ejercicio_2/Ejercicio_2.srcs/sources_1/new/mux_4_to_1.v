`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2022 06:23:33 PM
// Design Name: 
// Module Name: mux_4_to_1
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

    


module mux_4_to_1(
       input A,
       input B,
       input C,
       input D,
       input  clk,
       input [1:0]selection,
       output Y);
   reg out_bus;
   always @(posedge clk)
   begin
        case(selection)
            2'b00: out_bus=A;
            2'b01: out_bus=B;
            2'b10: out_bus=C;
            2'b11: out_bus=D;
            endcase
   end
    assign Y= out_bus;
endmodule
