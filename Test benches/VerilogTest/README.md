
* "adder_tb3.v" to sprawny test bench. Wykonuje on test wyczarpujący na instancji sumatora
* Test można przeprowadzić narzędziem "Icarus Verilog" dostępnym tutaj:  http://bleyer.org/icarus/ 
* Pliki z folderu "6-bit Brent-Kung adder" oraz pliki "adder_tb3.v" i "test_vectors.txt" należy pobrać i wrzucić do folderu "C:\iverilog\bin"
* Utworzyć formę vvp assembly - command prompt
  + &gt;cd \iverilog\bin
  + &gt;iverilog   adder_tb3.v
* Uruchomić test bench
  + &gt;vvp a.out
* Uruchomić GTKwave
  + &gt;gtkwave test.vcd
* Resztę testbenchow urachamia się analogicznie poprzez umieszczenie pliku z testbenchem oraz odpowiedniego kodu sumatora w folderze   

    
