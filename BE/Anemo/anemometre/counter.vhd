Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	port(
		in_freq : in std_logic;
		razn : in std_logic;
		counter : out unsigned (7 downto 0));
end counter;

architecture arc of counter is
	
begin 
	
	process(in_freq, razn) is
		variable cpt : unsigned (7 downto 0);
	begin
	if razn = '1' then
      counter <= "00000000";
      cpt := "00000000";
	elsif rising_edge(in_freq) then
      cpt := cpt + 1;
      counter <= cpt ;
      
	end if;
	end process ;
end arc;