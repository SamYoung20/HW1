module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output nAornB,	     // Single bit output, (~A)+(~B)
  output AnorB,	     // Single bit output, ~(A+B)
  output AnandB	     // Single bit output, ~(AB)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  or orgate(nAornB, nA, nB);		// OR gate produces nAornB from nA and nB
  nor norgate(AnorB, A, B);		// NOR gate produces AnorB
  nand nandgate(AnandB,A, B);		// NAND gate prodoces AnandB


endmodule
