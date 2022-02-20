`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2022 10:53:45 PM
// Design Name: 
// Module Name: ON_OFF_Switches
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


module ON_OFF_Switches(

    input clk,
    input btnU,
    input btnR,
    input btnD,
    input btnL,
    
    input [15:0]swtch,
    output [15:0]led
    
    );
    //reg [15:0] outLeds;
    reg [15:0] outLeds;
   
    always @(posedge clk)
       begin
    // Parse of switches by button
        if(btnU==1)
            
                setOFF(.inputSwitch(swtch[15:12]),.outputleds(outLeds[15:12]));
          
        else if (btnR==1)
            
                 setOFF(.inputSwitch(swtch[11:8]),.outputleds(outLeds[11:8]));
               
        else if (btnD==1)
           
                setOFF(.inputSwitch(swtch[7:4]),.outputleds(outLeds[7:4]));
               
        else if (btnL==1)
            
                setOFF(.inputSwitch(swtch[3:0]),.outputleds(outLeds[3:0]));
        else
                setON(.inputSwitch(swtch[15:0]),.outputleds(outLeds[15:0]));
        
                   
    end 
         
          assign led = outLeds;
        
        

endmodule
