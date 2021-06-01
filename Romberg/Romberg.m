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
## @deftypefn {} {@var{retval} =} Romberg (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Armando Gutiérrez Ayala <diego@ag>
## Created: 2021-05-30
## Ejemplos de funciones
## f = @(x) sin(x);
## f = @(x) e^(x^2);
## f = @(x) log( (x^3) + 5*(x^2));
## f = @(x) log( sin(x) + 5*(x^2));
function res = Romberg (f, n, m, a, b)
   hn = (b-a)/(2^n);   
   if m == 0
      if n == 0
         res = 1/2 * (b-a) * (f(a) + f(b));
      else
         res = 0;
         for k=1:2^(n-1)
            res = res + f(a+(2*k-1)*hn);
         endfor
         res = hn*res + 1/2 * Romberg(f, n-1, 0, a, b);
      endif
   else
      res = 1/(4^m - 1) * (4^m * Romberg(f, n, m-1, a, b) - Romberg(f, n-1, m-1, a, b));
   endif   
endfunction
