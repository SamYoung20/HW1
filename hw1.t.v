`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, nAornB, AnorB, AnandB;    // Test outputs

  demorgan dut(A, B, nA, nB, nAandnB, nAornB, AnorB, AnandB);  // Module to be tested


  // Run sequence of test stimuli
  // All circuit outputs on one truth table
  initial begin
    $display("A B | ~A ~B | ~A~B | (~A)+(~B) | ~(A+B) | ~(AB)");            // Prints header for truth table
    A=0;B=0; #1                                 
    $display("%b %b |  %b  %b |    %b |          %b|       %b|    %b", A,B, nA, nB, nAandnB, nAornB, AnorB,AnandB);
    A=0;B=1; #1                                 
    $display("%b %b |  %b  %b |    %b |          %b|       %b|    %b", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b |          %b|       %b|    %b", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b |          %b|       %b|    %b", A,B, nA, nB, nAandnB, nAornB, AnorB, AnandB);
  end
endmodule    // End demorgan_test
