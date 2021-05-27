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
## @deftypefn {} {@var{retval} =} gaussSeidel (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Armando Gutiérrez Ayala <diego@ag>
## Created: 2021-03-02

function [y, error]= GaussSeidel(A, b, x)
   C = A;
   d = b;
   y = x;
   ren = length(A);
   for n = 1:ren
      C(n,:) = A(n,:)/A(n,n);
      C(n,n) = 0;
      d(n) = b(n)/A(n,n);
   endfor
   for n = 1:ren
      y(n) = d(n) - C(n,:) * y;
   endfor
   format long;
   error = norm(b - A*y) * 100;
endfunction