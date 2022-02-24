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
    input clk,
    input [3:0] inputSwitch,
    input btn,
    input[3:0]  outputleds

    );
    genvar i;
    
 
      for(i = 0; i < 4 ; i = i + 1) 
      begin
         nand(outputleds[i],inputSwitch[i],btn);
        
      end
     
endmodule
