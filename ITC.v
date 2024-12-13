module Intelligent_Traffic_Control(input clk, clr, X, output reg [1: 0]hwy, cntry, output reg [2: 
0]State);
parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101;
parameter RED=2'b00, YELLOW=2'b01, GREEN=2'b10;
initial
begin
State<=S0;
hwy=GREEN;
cntry=RED;
end
always @(posedge clk)
begin
case(State)
S0:begin
 hwy=GREEN;
 cntry=RED;
 end
S1:begin
 hwy=YELLOW;
 cntry=RED;
 end
S2:begin
 hwy=RED;
 cntry=RED;
 end
S3:begin
 hwy=RED;
 cntry=GREEN;
 end
S4:begin
 hwy=RED;
 cntry=YELLOW;
 end
S4:begin
 hwy=RED;
 cntry=RED;
 end
endcase
end
always @(posedge clk)
begin
/*if(rst==0)
State<=S0;*/
if(clr)
State<=S0;
else
 begin
 case(State)
 
 S0:begin
 if(X==4'b1111)
 State<=S0;
 else
 State<=S1;
 end
 S1:begin
 if(X==4'b0011)
 State<=S1;
 else
 State<=S2;
 end
 S2:begin
 if(X==4'b0011)
 State<=S2;
 else
 State<=S3;
 end
 S3:begin
 if(X==4'b1111)
 State<=S3;
 else
 State<=S4;
 end
 S4:begin
 if(X==4'b0011)
 State<=S4;
 else
 State<=S5;
 end
 S5:begin
 if(X==4'b0011)
 State<=S5;
 else
 State<=S0;
 end
endcase 
end
end
endmodule
Test Bench:
Module Intelligent_Traffic_Light_TB();
reg clk;
reg clr;
reg X;
wire [1: 0]hwy, cntry;
wire [2: 0]State;
Intelligent_Traffic_Control dut (clk, clr, X, hwy, cntry, State);
endmodule
