`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 13:32:11
// Design Name: 
// Module Name: comparator
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


module comparator(
output reg [1:0] out,
input [3:0]x,y,
input rst
    );
    
    
    always @(*)
    begin
      if(rst)
       out = 2'b00;
     
         else if(x>y)
            out = 2'b10;
          else if (x<y)
             out = 2'b01;
             
           else
              out = 2'b11;
         
         end
    

endmodule
