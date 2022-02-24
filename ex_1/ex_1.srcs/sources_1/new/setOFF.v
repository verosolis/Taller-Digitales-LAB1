`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:53:07 PM
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
    input btn,
    input[3:0] outputleds
    );
   
    generate
    genvar i;
    for(i = 0; i < 4 ; i = i + 1) 
      begin
         nand(outputleds[i],inputSwitch[i],btn);
        
      end
      endgenerate
endmodule
