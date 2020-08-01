`timescale 1ns/1ns
module Reg5_3ns(input clk, rst, ld, input [4:0] parIn, output reg [4:0] parOut);
    always @(posedge clk, posedge rst) begin
        #3
        if(rst) parOut = 5'b0;
        else if(ld) parOut = parIn;
        else parOut = parOut;
    end
endmodule