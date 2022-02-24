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

    input [15:0] inputSwitch,
    input [3:0]btn,
    output[15:0] outputleds
    );
   
    generate
    genvar i,y;
    for (y = 0; y < 4 ; y = y + 1)begin
    if (y == 0 )begin
    for(i = 15; i>11 ; i = i -1) 
      begin
         nand(outputleds[i],inputSwitch[i],btn[y]);
        
      end
     end
     else if (y == 1)begin
      for(i = 11; i>8 ; i = i -1) 
      begin
         nand(outputleds[i],inputSwitch[i],btn[y]);
        
       end
      end
      else if (y == 2)begin
      for(i = 8; i>4 ; i = i -1) 
       begin
         nand(outputleds[i],inputSwitch[i],btn[y]);
        
        end
      end
      else if (y == 3)begin
      for(i = 4; i>=0 ; i = i -1) 
      begin
         nand(outputleds[i],inputSwitch[i],btn[y]);
        
      end
      end
   
    end
    
   
      endgenerate
endmodule
