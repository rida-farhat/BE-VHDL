library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity comparateur is
port (
	clk, rst : in std_logic;
	duty, cnt : in std_logic_vector(7 downto 0);
	pwm_out : out std_logic);
end entity comparateur;

architecture arch_comparateur of comparateur is
signal tmp : std_logic;

begin
process (clk, rst)
begin
if rst = '0' then
	tmp <= '0';
elsif rising_edge(clk) then
	if duty <= cnt then
		tmp <= '1';
	else tmp <= '0';
end if;
end if;
pwm_out <= tmp;

end process;
end architecture arch_comparateur;