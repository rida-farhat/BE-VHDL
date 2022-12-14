library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity controle_butees is
port (
	pwm : in std_logic;
	butee_g : in std_logic_vector(11 downto 0);
	butee_d : in std_logic_vector(11 downto 0);
	sens : in std_logic;
	angle_barre : in std_logic_vector(11 downto 0);
	out_pwm : out std_logic;
	out_sens : out std_logic;
	fin_course_g : out std_logic;
	fin_course_d : out std_logic
	);
end entity controle_butees;


architecture arch_butees of controle_butees is

begin

process(angle_barre)
	BEGIN
		if angle_barre <= butee_g then
			if sens = '0' then
				out_pwm <= '0';
				fin_course_g <= '1';
			else out_pwm <= pwm;
			end if;
		elsif angle_barre >= butee_d then
			if sens = '1' then
				out_pwm <= '0';
				fin_course_d <= '1';
			else out_pwm <= pwm;	
			end if;
		else 
			out_pwm <= pwm;
			fin_course_d <= '0';
			fin_course_g <= '0';
		end if;
		
end process;
	
	
end architecture arch_butees;