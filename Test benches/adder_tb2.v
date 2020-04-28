//
// testbench for "adder" module
//
`timescale 1ns / 1ps //time-unit = 1ns, precision = 10ps

	module adder_tb1;
		integer f;
		integer i;
		integer k;
		reg [5:0] suma;
		// duration for each bit = 20 * timescale = 20 * 1 ns = 20 ns
		localparam period = 100;
		// Inputs
		reg [5:0] x,y;
		
		// Outputs
		wire [5:0] s;
		wire cout;
		
		// Adder instance
		adder add (x,y,s,cout);
	
		reg [5:0] x_in [1:0];			//tablica "rejestrów" //63
		reg [5:0] y_in [1:0];  //63
		reg [6:0] s_expected [1:0];  //4095
		
		reg [5:0] xx;
		reg [5:0] yy;
		reg [6:0] ss;
		
		integer errors;
		integer file;
		integer scan;
		integer count;
		integer status, fd;
		reg [4:0] value;
		initial begin


			k=0;
			fd = $fopenr("x_in.dat");
			if (!fd) $error("could not read file");
				while (!$feof(fd)) begin
					status = $fscanf(fd,"%b",xx);
					x_in[k] = xx;
					k = k+1;
					// check status, then do what you need to do with value
				end
			end
			fcloser(fd);
			/*k=0;
			fd = $fopenr("y_in.dat");
			if (!fd) $error("could not read file");
				while (!$feof(fd)) begin
					status = $fscanf(fd,"%b",yy);
					y_in[k] = yy;
					k=k+1;
					// check status, then do what you need to do with value
				end
			end
			fcloser(fd);
			
			k=0;
			fd = $fopenr("s_expected.dat");
			if (!fd) $error("could not read file");
				while (!$feof(fd)) begin
					status = $fscanf(fd,"%b",ss);
					s_expected[k] = ss;
					k=k+1;
					// check status, then do what you need to do with value
				end
			end
			fcloser(fd);
			
			/*ile  = $fopenr("x_in.txt");
			for(i=0 ;i <2;i=i+1) begin
				count = $fscanf(file,"%b",x_in[i]);
			end
			$fcloser(file);
			
			file  = $fopenr("y_in.txt");
			for(i=0 ;i <2;i=i+1) begin
				count = $fscanf(file,"%b",y_in[i]);
			end
			$fcloser(file);
			
			file  = $fopenr("s_expected.txt");
			for(i=0 ;i <2;i=i+1) begin
				count = $fscanf(file,"%b",s_expected.txt[i]);
			end
			$fcloser(file);
			k = 0;
			file = $fopen("x_in.txt","r");
			if (file == 0) begin
				$display("x_in.txt handle was NULL");
				$finish;
			end
			while (!$feof(file)) begin
				scan = $fgets(xx,file);
				x_in[k] = xx;
				k = k+1;
			end
			$fclose(file);
			
			k = 0;
			file = $fopen("y_in.txt","r");
			if (file == 0) begin
				$display("y_in.txt handle was NULL");
				$finish;
			end
			while (!$feof(file)) begin
				scan = $fgets(yy,file);
				y_in[k] = yy;
				k = k+1;
			end
			$fclose(file);
			
			k = 0;
			file = $fopen("s_expected.txt","r");
			if (file == 0) begin
				$display("s_expected.txt handle was NULL");
				$finish;
			end
			while (!$feof(file)) begin
				scan = $fgets(ss,file);
				s_expected[k] = ss;
				k = k+1;
			end
			$fclose(file); */
			errors = 0;
			f = 64*64*10; 
			#f $finish;	
		end
		
		initial begin
			#1000
			for(i = 0; i <64*64; i = i+1) begin
				x = x_in[i];
				y = y_in[i];
				#20
				
				if( s !== s_expected[i][5:0]) begin
					$display("Error at time %d, at the %dth numbers.\ns(%b) != s_expected[5:0](%d)",$time,i,s,s_expected[i][5:0]);
					errors = errors + 1;
				end
				
				if(cout !== s_expected[i][6]) begin
					$display ("Errpr at time = %d, at the %dth numbers.\ncout(%b) != s_expected[6](%d)",$time, i,cout,s_expected[i][6]);
					errors = errors + 1;
				end
				
			
			end
			
			if(errors == 0) begin
				$display ("Test passed!");
			end
			else
			begin
				$display("Test failed. %d errors found.",errors);
			end
			
			$finish;
		end
		
	//begin
	//	$dumpfile("adder_vcd.vcd");
	//	$dumpvars;
	//end		
/*		
		initial 
			$monitor( "______________\n     %b \n +   %b \n =  %b%b", x, y, cout, s);

			
		
		
		always begin @(x or y) 
			begin
			for( i =0; i < 64*64; i = i + 1) 
				#10 {x, y} = i;		
				
			#10 $stop;
			end
			
		end
*/
	endmodule