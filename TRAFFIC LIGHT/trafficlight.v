Module traffficlight (
input clk,
output reg LED_R, 
output reg LED_Y,
output reg LED_G
);
reg [1:0] state;
reg [31:0] counter;

parameter RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10; 

parameter RED_TIME = 32'd500000000;
parameter GREEN_TIME = 32'd500000000;
parameter YELLOW_TIME = 32'd500000000;

initial begin
state = RED;
counter = 0;
LED R = 0;
LED_Y = 1;
LED_G = 1;
end

always @ (posedge clk) begin
counter <= counter + 1;
case (state)
RED: begin
if (counter >= RED _TIME)
state <= GREEN;
counter ＜= 0；
begin
GREEN: begin
if
(counter >= GREEN TIME) begin

counter <= 0;
end
end
YELLOW: begin
(counter >= YELLOW
_TIME) begin
state <= RED; counter <= 0;
default: begin
state <= RED;
counter ＜= 0：
end endcase
case (state)
RED: begin
LED Y = 0: / Yetlow OFF
LED
LED_G = 0; // Green OFF
end
GREEN: begin
LED G = 1; // Green ON
end
YELLOW: begin
LED R = 0; // Red OFF
LED
Ty = 1; |/ Yellow ON
LED_G = 0; // Green OFF
end