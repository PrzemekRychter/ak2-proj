//
// testbench for "adder" module
//
`timescale 1ns / 1ps //time-unit = 1ns, precision = 10ps
	module adder_tb1;
		integer finish;
		integer i;
		reg [5:0] suma;

		// Inputs
		reg [5:0] x,y;
		
		// Outputs
		wire [5:0] s;
		wire cout;
		
		adder add (x,y,s,cout);

		initial begin
			x = 0;
			y = 0;
			finish = 64*64*10;
			#finish $finish;
		end
		
		initial
			$monitor( "______________\n     %b \n +   %b \n =  %b%b", x, y, cout, s);
		
		always begin @(x or y)
			begin 
			for( i =0; i < 64*64; i = i + 1)
				#10 {x, y} = i;
				#10 $stop;
			end
			
		end
	
	endmodule