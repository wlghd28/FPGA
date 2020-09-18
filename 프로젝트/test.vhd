----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:55 09/18/2020 
-- Design Name: 
-- Module Name:    test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER is
    Port ( num1 : in  STD_LOGIC_VECTOR (3 downto 0);
           num2 : in  STD_LOGIC_VECTOR (3 downto 0);
           result : out  STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC);
end ADDER;

architecture Behavioral of ADDER is
	signal cin: STD_LOGIC_VECTOR (3 downto 1);
begin
	result(0) <= num1(0) xor num2(0);
	cin(1) <= num1(0) and num2(0);
	result(1) <= num1(1) xor num2(1) xor cin(1);
	cin(2) <= (num1(1) and num2(1)) or ((num1(1) or num2(1)) and cin(1));
	result(2) <= num1(2) xor num2(2) xor cin(2);
	cin(3) <= (num1(2) and num2(2)) or ((num1(2) or num2(2)) and cin(2));
	result(3) <= num1(3) xor num2(3) xor cin(3);
	carry <= (num1(3) and num2(3)) or ((num1(3) or num2(3)) and cin(3));
end Behavioral;


