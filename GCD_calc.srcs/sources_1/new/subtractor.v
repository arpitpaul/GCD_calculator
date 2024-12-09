`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 13:40:15
// Design Name: 
// Module Name: subtractor
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


module subtractor(

input [3:0] x,y,
output reg [3:0] xout, yout,
input [1:0] cmd,
input rst

    );
    
    
    
    always @ (*)
    begin
      if(rst==1||cmd == 2'b00)
        begin
        
        xout <= 4'd0;
        yout <= 4'd0;
        end
        
        
        else if ( cmd == 2'b10)
        begin
        xout <= x-y;
        yout <= y;
        end
        
        
        else if(cmd == 2'b01)
        begin
        xout <= x;
        yout <= y-x;
        end
        
        else
         begin
         xout <= x; yout <= y;
         
         end
      
    end
endmodule
