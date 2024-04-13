library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_fulladder is
end tb_fulladder;

architecture teste of tb_fulladder is

  -- Declaração do componente a ser simulado:
  component fulladder is

    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );

  end component;

  signal Cin, Cout, x, y, s: std_logic;

begin

 -- Instancie o componente "Somador" declarado acima para simulação, conectando-o aos "fios" com os estímulos:
 instancia_fulladder: fulladder port map (Cin=>Cin,Cout=>Cout,x=>x,y=>y,s=>s);

 -- As próximas linhas criam os estímulos da simulação,
 -- A letra 'x' indica que os valores a seguir estão expressos em base hexadecimal
 Cin 	<= '0', '1' after 20 ns;
 x		<= '0' , '1'  after 40 ns;
 y		<= '0', '1' after 80 ns;

end teste;