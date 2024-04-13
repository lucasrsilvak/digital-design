LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
 

architecture Structural of fulladder is

  signal Cin0, Cout0, x0, y0, s0: std_logic;
  signal Cin1, Cout1, x1, y1, s1: std_logic;
  signal Cin2, Cout2, x2, y2, s2: std_logic;
  signal Cin3, Cout3, x3, y3, s3: std_logic;


 instancia_fulladder: fulladder1 port map (Cin=>Cin0,Cout=>Cout0,x=>x0,y=>y0,s=>s0);
 instancia_fulladder: fulladder2 port map (Cout0=>Cin1,Cout=>Cout1,x=>x,y=>y,s=>s);
 instancia_fulladder: fulladder3 port map (Cout1=>Cin2,Cout=>Cout2,x=>x,y=>y,s=>s);
 instancia_fulladder: fulladder4 port map (Cout2=>Cin3,Cout=>Cout3,x=>x,y=>y,s=>s);

	

end Structural;