clear;
clc;

#A = [4.63 -1.06 -2.27; -3.39 9.81 -4.78; 1.78 3.01 -4.88];
#b = [-6.36; 3.95; -7.70];

#A = [1.2 2.1 -1.1 4.0; -1.1 2.0 3.1 4.9; -2.1 2.2 3.7 16.0; -1.0 -2.3 4.7 12.0]
#b = [5.98; 3.89; 12.2; 4.03]

A = [1.2 2.1 -1.1 4.0; -1.1 2.0 3.1 4.9; -1.0 -2.3 4.7 12.0; -2.1 2.2 3.7 16.0]
b = [5.98; 3.89; 4.03; 12.2]

x = zeros(size(b), 1);

maxIter = 300;
tolerancy = 0.00000001;
error = 1;

for i=0:maxIter
   disp(i);
   [x, error] = GaussSeidel(A, b, x)
   if( tolerancy > error )
      printf("Error final: %.15f\n", error);
      break;
   endif
endfor