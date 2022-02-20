`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2022 11:53:46 AM
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


module setON(
    input [15:0] inputSwitch,
    output reg [15:0] outputleds
    );
    
    integer i,x,y;
    integer ref=1'b1; // negate of BTN =0 and used to compare if sw ON  
  
    //Initialize 
    initial begin     
         for(i = 0; i < 16 ; i = i + 1) 
         begin
            if(inputSwitch[i]==ref)
                begin //Behavioral of NAND 
                 x= ~inputSwitch[i];
                 assign y = x & ref;
                 outputleds[i] = y;
                end
            else
                outputleds[i] = inputSwitch[i];
                
         end
      end

endmodule
