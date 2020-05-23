//
// Preprocessing - this module creates
// g, p and h function for prefix network
//
	module gph (x, y, G, P, H);
		
		input x, y;
		output G, P, H;
		
		assign G = x & y;
		assign P = x | y;
		assign H = x ^ y;

	endmodule