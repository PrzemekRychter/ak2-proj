	//
    // simplified fundamental carry operator
	// This module does not propagete carry 
	// from lower position, it only generate
	// carry for the higher position
	//
	module sfco ( Ga, Pa, Gb, Gab); 
		
		input Ga, Pa, Gb;
		output Gab;
		
		assign Gab = Ga | (Pa & Gb);
	
    endmodule
