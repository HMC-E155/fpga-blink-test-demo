`timescale 10ns/1ns
`default_nettype none
`define N_TV 8

module fpga_blink_demo_tb();
 // Set up test signals
 logic nreset, led;
 logic clk;

 // Instantiate the device under test
 top dut(nreset, led);
  
 // At the start of the simulation:
 //  - Pulse the reset line (if applicable)
 initial
   begin
     nreset = 1; #27; nreset = 0; #27; nreset = 1;
   end
endmodule