`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 13:58:17
// Design Name: 
// Module Name: fsm
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


module fsm(

input rst, clk, proceed,
input [1:0] comparison,
output reg xsel,ysel,xld,yld,enable

    );
    
    reg [2:0] nstate, pstate;
    parameter init=3'd0, s0= 3'd1, s1= 3'd2, s2=3'd3, s3= 3'd4, s4=3'd5, s5=3'd6;
    
    always @(posedge clk)
    begin
     if(rst)
       pstate <= init;
     else
       pstate <= nstate;
    
    end
    
    
    always @(posedge clk) 
    begin
       case(pstate)
        init : begin
        if(proceed==0)
              nstate <= init;
              else 
                nstate <= s0;
           end  
           
           s0: begin
              enable <= 0;
              xsel <= 0;
              ysel <= 0;
              xld <= 0;
              yld <= 0;
              nstate <= s1;
           end 
           
            s1: begin
              enable <= 0;
              xsel <= 0;
              ysel <= 0;
              xld <= 1;
              yld <= 1;
              nstate <= s2;
           end 
           
         s2: begin
             
              xld <= 0;
              yld <= 0;
              
              if(comparison == 2'b10)
                 nstate <= s3;
               else if(comparison == 2'b01)
                 nstate <= s4;
                else if(comparison==2'b11)
                  nstate <= s5;
//               else
//                nstate <= init;
           end   
           
           s3: begin
              enable <= 0;
              xsel <= 1;
              ysel <= 0;
              xld <= 1;
              yld <= 0;
              nstate <= s2;
           end 
           
           s4: begin
              enable <= 0;
              xsel <= 0;
              ysel <= 1;
              xld <= 0;
              yld <= 1;
              nstate <= s2;
           end 
           
        s5: begin
              enable <= 1;
              xsel <= 1;
              ysel <= 1;
              xld <= 1;
              yld <= 1;
              nstate <= s2;
           end 
           
           default : nstate <= s0;
           
           
           endcase
    
    end
endmodule
