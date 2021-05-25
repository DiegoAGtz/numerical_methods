A = [1.2 2.1 -1.1 4.0; -1.1 2.0 3.1 4.9; -2.1 2.2 3.7 16.0; -1.0 -2.3 4.7 12.0];
b = [5.98; 3.89; 12.2; 4.03];

[nfilas, ncols] = size(A);    # tam = [nfilas, ncols]
C = [A b];

printf("Metodo de Gaus-Jordan\n\n");

for i=1:nfilas    # Ciclo para las filas
   C(i, :) = C(i, :) ./ C(i, i);
   for j=1:nfilas     # Ciclo para hacer 0
      if( i ~= j)
         C(j, :) = C(j, :) - C(j, i) .* C(i, :);
      endif
   endfor
endfor

x = zeros(nfilas, 1);

for i=1:nfilas
   x(i) = C(i, ncols+1);
endfor

error = abs(A*x - b);
error_abs = norm(error) * 100;

printf("Matriz triangular superior:\n");
disp(C);
printf("Vector solucion:\n");
for i=1:nfilas
   printf("%.15f\n", x(i, 1));
endfor
#disp(x);
printf("Error: %.15f\n", error_abs);
