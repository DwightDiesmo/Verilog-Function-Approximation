`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 07:32:14 PM
// Design Name: 
// Module Name: PieceWiseLinearApproximation
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
module PieceWiseLinearApproximation #(parameter WL = 16, WA = 6, WO = 16)(
        input signed [WL-1:0] x,
        output signed [WO-1:0] cosine
    );
    wire signed [WL-1:0] a, b;
    wire signed [(WL+WL)-1:0] ax;
    wire [WA-1:0] address;
    
    SegmentDecoder #(.WL(16),.WA(6)) decode (.x(x),.address(address));
    LUT #(.WL(32),.WA(6)) lut (.address(address),.segmentCoeff({a,b}));
    FixedPointMult #(.WI1(4),.WF1(12),.WI2(4),.WF2(12),.WIO(8),.WFO(24)) mult (.in1(x),.in2(a),.out(ax));
    FixedPointAdder #(.WI1(8),.WF1(24),.WI2(4),.WF2(12),.WIO(2),.WFO(14)) add (.in1(ax),.in2(b),.out(cosine));
endmodule
