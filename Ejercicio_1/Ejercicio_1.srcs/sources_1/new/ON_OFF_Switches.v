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
    //setON(.inputSwitch(swtch[15:0]),.outputleds(outLeds[15:0]));
    setOFF(.clk(clk),.inputSwitch(swtch[15:12]),.btn(btnU),.outputleds(outLeds[15:12]));
    setOFF(.clk(clk),.inputSwitch(swtch[11:8]),.btn(btnR),.outputleds(outLeds[11:8]));
    setOFF(.clk(clk),.inputSwitch(swtch[7:4]),.btn(btnD),.outputleds(outLeds[7:4]));
    setOFF(.clk(clk),.inputSwitch(swtch[3:0]),.btn(btnL),.outputleds(outLeds[3:0]));
    //tOFF(.inputSwitch(swtch[11:8]),.outputleds(outLeds[3:8]));
    //setOFF(.inputSwitch(swtch[7:4]),.outputleds(outLeds[7:4]));
    //setOFF(.inputSwitch(swtch[3:0]),.outputleds(outLeds[3:0]));
     assign led = outLeds;   

          
endmodule
