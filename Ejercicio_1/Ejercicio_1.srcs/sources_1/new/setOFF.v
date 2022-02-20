`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2022 03:40:42 PM
// Design Name: 
// Module Name: setOFF
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


module setOFF(
    input [3:0] inputSwitch,
    output reg [3:0] outputleds

    );
    
    integer i;
    integer d = 1'b0;
    initial begin     
         for(i = 0; i < 4 ; i = i + 1) 
         begin
           outputleds[i] = d ;
         end
      end
endmodule
