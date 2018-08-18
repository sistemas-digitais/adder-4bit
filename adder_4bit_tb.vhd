-- adder_4bit - A simple example of a four bit adder
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity adder_4bit_tb is
end adder_4bit_tb;

architecture behavior of adder_4bit_tb is

    component adder_4bit is
        port (
            A		: in    unsigned(3 downto 0);
            B		: in    unsigned(3 downto 0);
            S 		: out   unsigned(3 downto 0)
        );
    end component;

    signal A, B, S: unsigned(3 downto 0);
	
begin
	adder_instance: adder_4bit port map(A=>A,B=>B,S=>S);
    
	A <= x"0",
         x"3" after 20 ns,
         x"2" after 40 ns,
         x"4" after 60 ns;
         
	B <= x"0",
         x"4" after 10 ns,
         x"3" after 30 ns,
         x"1" after 50 ns;
    
end behavior;
