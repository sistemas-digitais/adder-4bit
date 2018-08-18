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

entity adder_4bit is
    port (
        A		: in    unsigned(3 downto 0);
        B		: in    unsigned(3 downto 0);
        S 		: out   unsigned(3 downto 0)
    );
end adder_4bit;

architecture dataflow of adder_4bit is
begin
    S <= A + B;
end dataflow;
