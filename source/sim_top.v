`timescale 1ns/1ps

module sim_top();

reg clk;
reg Reset_n;
reg key;
wire State;

wire [23:0] L_Data;
wire [23:0] R_Data;
wire ready;

wire mic_sck;
wire mic_ws;
reg mic_sd;

initial begin
  clk = 1'b0;
  Reset_n = 1'b0;
  mic_sd = 1'b0;
  #2;
  Reset_n = 1'b1;
end

initial forever begin
  clk = ~clk;
  #1;
end

initial forever begin
  mic_sd = ~mic_sd;
  #400;
end

i2s_top i2s_top(
  .clk(clk),
  .Reset_n(Reset_n),
  .L_Data(L_Data),
  .R_Data(R_Data),
  .ready(ready),
  .key(key),
  .State(State),
  .mic_sck(mic_sck),
  .mic_ws(mic_ws),
  .mic_sd(mic_sd)
);

endmodule