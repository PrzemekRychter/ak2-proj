 //
 //	6-bit BKA adder
 //


	module adder (X,Y,S,cout);
	
		input [5:0] X;
		input [5:0] Y;
		output [5:0] S;
		output cout;
		
		wire [5:0] Gii;
		wire [5:0] Pii;
		wire [5:0] Hii;
		wire G10, P10, G32, P32, G54, P54, G30, G50, G40, G20;
		
		// Blok wytwarzania bitowy funkcji g, p ,h
		gph GPH0 (X[0], Y[0], Gii[0], Pii[0], Hii[0]);
		gph GPH1 (X[1], Y[1], Gii[1], Pii[1], Hii[1]);
		gph GPH2 (X[2], Y[2], Gii[2], Pii[2], Hii[2]);
		gph GPH3 (X[3], Y[3], Gii[3], Pii[3], Hii[3]);
		gph GPH4 (X[4], Y[4], Gii[4], Pii[4], Hii[4]);
		gph GPH5 (X[5], Y[5], Gii[5], Pii[5], Hii[5]);
		
		// Blok GP
		// 1 poziom sieci prefiksowej
		sfco G10x (Gii[1], Pii[1], Gii[0], G10);
		fco  GP32 (Gii[3], Pii[3], Gii[2], Pii[2], G32, P32);
		fco  GP54 (Gii[5], Pii[5], Gii[4], Pii[4], G54, P54);
		// 2 piziom sieci prefiksowej
		sfco G30x (G32, P32, G10, G30);
		// 3 poziom sieci prefiksowej
		sfco G50x (G54, P54, G30, G50);
		// 4 poziom sieci prefiksowej
		sfco G20x (Gii[2], Pii[2], G10, G20);
		sfco G40x (Gii[4], Pii[4], G30, G40);
		
		// Blok wytwarzania sum bitowych s
		assign S[0] = Hii[0];
		assign S[1] = Hii[1] ^ Gii[0];
		assign S[2] = Hii[2] ^ G10;
		assign S[3] = Hii[3] ^ G20;
		assign S[4] = Hii[4] ^ G30;
		assign S[5] = Hii[5] ^ G40;
		assign cout = G50;

	endmodule

	module fco ( Ga, Pa, Gb, Pb, Gab, Pab); 
		
		input Ga, Pa, Gb, Pb;
		output Gab, Pab;
		
		assign Gab = Ga | (Pa & Gb);
		assign Pab = Pa & Pb;
	
    endmodule
    
    	module gph (x, y, G, P, H);
		
		input x, y;
		output G, P, H;
		
		assign G = x & y;
		assign P = x | y;
		assign H = x ^ y;

	endmodule

	module sfco ( Ga, Pa, Gb, Gab); 
		
		input Ga, Pa, Gb;
		output Gab;
		
		assign Gab = Ga | (Pa & Gb);
	
    endmodule
	
	
	

