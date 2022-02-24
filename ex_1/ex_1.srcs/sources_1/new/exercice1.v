`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:45:25 PM
// Design Name: 
// Module Name: exercice1
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


module exercice1(
    input clk,
    input btnU,
    input btnR,
    input btnD,
    input btnL,
    input [15:0]swtch,
    output [15:0]led

    );
    
    reg [15:0] outsLed;
    reg [15:0] tempLed;
    wire [15:0] tempSW;
    genvar i;
    assign led=swtch;
    assign tempSW=swtch;
    
    
    assign led = outsLed;
    always @ (posedge clk) begin
//
    if (btnU == 1)
            outsLed[15:12]=tempLed[15:12];
    
    else if (btnR == 1)
            outsLed[11:8]=tempLed[11:8]; 
    else if (btnD == 1)
            outsLed[7:4]=tempLed[7:4];
    else if (btnL == 1)
            outsLed[3:0]= tempLed[3:0];                    
    end
    
   
setOFF u1(

  .inputSwitch(swtch[15:12]),
     .btn(btnU),
    .outputleds(tempLed[15:12])
    );
    
setOFF u2(

  .inputSwitch(swtch[11:8]),
     .btn(btnR),
    .outputleds(tempLed[11:8])
    );             
    
 setOFF u3(

  .inputSwitch(swtch[7:4]),
     .btn(btnU),
    .outputleds(tempLed[7:4])
    );     
setOFF u4(

  .inputSwitch(swtch[3:0]),
     .btn(btnU),
    .outputleds(tempLed[3:0])
    );  
endmodule
