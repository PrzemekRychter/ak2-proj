    //
	// fundamental carry operator
	//
	module fco ( Ga, Pa, Gb, Pb, Gab, Pab); 
		
		input Ga, Pa, Gb, Pb;
		output Gab, Pab;
		
		assign Gab = Ga | (Pa & Gb);
		assign Pab = Pa & Pb;
	
    endmodule