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
## @deftypefn {} {@var{retval} =} gradienteConjugado (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Armando Gutiérrez Ayala <diego@ag>
## Created: 2021-03-26

function [y] = gradienteConjugado (A,b,x,iter,error)
   i = 0;
   r = b - A*x;
   d = r;
   tol = norm(r);
   while (i < iter && tol > error)
      printf('Iteracion: %i\n', i);
      alpha = (d'*r)/(d'*A*d);
      disp('alfa');
      disp(alpha);
      x = x + alpha*d;
      printf('%3d ',(i+1));
      printf('%5.5f ',x');
      printf('\n')
      r = b - A*x;
      % disp(r);
      beta = (d'*A*r)/(d'*A*d);
      disp('beta');
      disp(beta);
      d = r-beta*d;
      % disp(d);
      tol = 100 * norm(r);
      printf('Error en porcentaje: %.15f\n', tol);
      i= i+1;
   endwhile
   disp(x');
   y = x;
endfunction
