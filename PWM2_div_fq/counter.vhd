library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
Use IEEE.STD_LOGIC_UNSIGNED;

entity counter is
port (
	clk, rst : in std_logic;
	freq : in std_logic_vector(7 downto 0);
	count : out std_logic_vector(7 downto 0));
end entity counter;


architecture arch_counter of counter is
signal cnt: std_logic_vector(7 downto 0) := "00000000";

begin
process (clk,rst) is

begin
if rst = '0' then
	cnt <= "00000000";
elsif rising_edge(clk) then
	cnt <= std_logic_vector( unsigned(cnt) + 1 );
	if cnt > freq then
		cnt <= "00000000";
	end if;
end if;

count <= cnt;

end process;
end architecture arch_counter;