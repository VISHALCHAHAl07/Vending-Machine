module vending_machine_tb;

  //inputs
  reg clk;
  reg[1:0] in;
  reg rst;

  //outputs
  wire out;
  wire[1:0] change;

  vending_machine dut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change));

  initial begin

    $dumpfile("vending_machine.vcd");
    $dumpvars(0,vending_machine_tb);

    rst = 1;
    clk = 0;

    #6 rst = 0;
    in = 1;
    #11 in = 1;
    #16 in = 1;
    #21 in = 1;
    #30 $finish; 

  end
  
  always #5 clk = ~clk;

endmodule
