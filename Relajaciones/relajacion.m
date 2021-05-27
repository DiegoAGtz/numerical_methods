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
## @deftypefn {} {@var{retval} =} relajacion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Armando Gutiérrez Ayala <diego@ag>
## Created: 2021-03-08

## relajado hace referencia a si es que la matriz esta escrita de tal
## forma que en su diagonal, todos los coeficientes son -1; 0 si no es
## de esta forma, 1 si esta escrita de esta forma.
function [C, d, residuo] = relajacion (A, b, x, relajado)
   C = A;
   d = b;
   
   rows = length(A);
       
   if( !relajado )
      for i=1:rows         
         C(i, :) = A(i, :)/-A(i, i);
         d(i) = b(i)/A(i, i);
      endfor
   endif
   
   residuo = d + C*x;
endfunction
