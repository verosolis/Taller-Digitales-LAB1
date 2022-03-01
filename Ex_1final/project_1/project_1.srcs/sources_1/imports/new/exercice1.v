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
    input [15:0]sw,
    output [15:0]led

    );
    
    reg [15:0] outsLed;
    wire[15:0] tempLed;
    wire [15:0] tempSW;
    wire[3:0]btns;
    wire [15:0]final;

    
    //assign led[15:0]=swtch[15:0];
    assign tempSW[15:0]=sw[15:0];
    
    assign  btns[0]= btnU ;
    assign  btns[1]= btnR;
    assign  btns[2]= btnD;
    assign  btns[3]=btnL;
    
    
    setOFF u1(
  .inputSwitch(sw[15:0]),
     .btn(btns[3:0]),
    .outputleds(tempLed[15:0])
    );
    
    always @ (posedge clk) begin
//
    if (btns[0] == 1)begin
            outsLed[15:12]= tempLed[15:12];
           
    end
    else if (btns[1] == 1)begin
        
            outsLed[11:8]=tempLed[11:8];     
     end

    else if (btns[2]== 1) begin
            outsLed[7:4]=tempLed[7:4];      
      end
    else if (btns[3] == 1)
            outsLed[3:0]= tempLed[3:0]; 
            
                           
    end
    
assign final[15:0]= outsLed[15:0];
assign led[15:0] = tempLed[15:0];
    
endmodule
