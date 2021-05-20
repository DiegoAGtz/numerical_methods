## Copyright (C) 2021 Diego Armando Gutiérrez Ayala
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} calcularFx (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Armando Gutiérrez Ayala <diego@ag>
## Created: 2021-02-04

function fx = calcularFx (x)
  #fx = sqrt(11 .* x - 7);
  #fx = e^-x;
  #fx = (x**2 - (e**x))/5;
  #   fx = 5*x - x**2 + e**x;
  #fx = x**x - 100;  
  #fx = (sin(x))**(1/3);
  #fx = (20 - x^3 - 2*x^2)./10;  
  #fx = x^4 + 3*x^3 - 2;
  fx = x - sin(4 .* x);
  #fx = x^3 + 2 .* x^2 + 10 .* x - 20;
endfunction
