//
// testbench for "adder" module
//

`timescale 1ns / 1ps //time-unit = 1ns, precision = 10ps
`include "adder.v"
	module adder_tb3;

		// Inputs
		reg [5:0] x,y;
		
		// Outputs
		wire [5:0] s;
		wire cout;
		
		// Variables
		integer i;							// loop index
		integer size;						// number of test vectors
		reg [31:0] errors;					// register for muber of storing errors
		reg errors_positions[4096:1];		// array indicating errors on every position: reg name[size:1]
		reg [18:0] test_vectors [4095:0];	// array of registers in order to load all test vectors: reg [18:0] name [size-1:0]
		reg [6:0] s_exp;					// register to store expected sum (with carry out) from test_vector array
		
		adder add (x,y,s,cout);				// adder instance

		initial begin
			// number of rows in test_vector.tv  2^6*2^6 = 64*64 = 4096 - all possible patterns
			size = 64*64;	
			errors = 0;
			$readmemb("test_vectors.txt",test_vectors);		
			
			for(i = 0; i < size; i = i + 1) begin
				
				{x, y, s_exp} = test_vectors[i];
				#1;
				
				if( (s_exp[5:0] != s[5:0]) || (s_exp[6] != cout) ) begin
					errors = errors + 1;	
					$display("___________________ERROR___________________\n");
					$display("     %b     test_vector ->       %b", x, test_vectors[i][18:13]);
					$display(" +   %b     test_vector ->   +   %b", y, test_vectors[i][12:7]);
					$display(" =  %b%b     test_vector ->   =  %b", cout, s, test_vectors[i][6:0]);
					$display("\ntime: ", $realtime);
					errors_positions[i+1] = 1;
				end else begin 
					$display("___________________GOOD___________________\n");
					$display("     %b     test_vector ->       %b", x, test_vectors[i][18:13]);
					$display(" +   %b     test_vector ->   +   %b", y, test_vectors[i][12:7]);
					$display(" =  %b%b     test_vector ->   =  %b", cout, s, test_vectors[i][6:0]);
					$display("\ntime: ", $realtime,"\n");
				end
			end
			
			$display("_______________FINAL RESULT________________\n");
			$display("Tested patterns: %26d",size);
			
			if(errors != 0) begin
				$display("Errors found: %29d",errors);
				for(i = 1; i <  size + 1; i = i + 1) begin
					if(errors_positions[i])
						$display("Error position(line in test_vector): %6d", i);
				end
			end else begin
				$display("No error found!");
			end
		end
		
		initial begin
		//	#500 $finish;
		end
				

	endmodule