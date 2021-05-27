# A = [4 3 0; 3 4 -1; 0 -1 4];
# b = [24; 30; -24];

A = [1.2 2.1 -1.1 4.0; -1.1 2.0 3.1 4.9; -1.0 -2.3 4.7 12.0; -2.1 2.2 3.7 16.0]
b = [5.98; 3.89; 4.03; 12.2]
x = ones(length(A), 1);

tolerancy = 0.0001;

residuo = zeros(length(A), 1);
error = 100;

for i=0:5000
   if( !i )
      [C, e, residuo] = relajacion(A, b, x, i);
   else
      [C, e, residuo]= relajacion(C, e, x, i);
   endif
   
   max = 1;
   for j=2:length(A)
      if( abs(residuo(j)) > abs(residuo(max)) )
         max = j;
      endif
   endfor
   
   x(max) += residuo(max);
   
   error = norm(abs(A*x - b)) .* 100;
   
   printf("Iteracion: %i\n", i);
   printf("Vector residuo: \n");
   disp(residuo);
   printf("Vector solución: \n");
   disp(x);
   printf("Error: %.10f\n\n", error);   
   
   if (error < tolerancy)
      printf("Iteracion: %i\n", i);
      printf("Vector residuo: \n");
      disp(residuo);
      printf("Vector solución: \n");
      disp(x);
      printf("Error: %.10f\n\n", error);
      
      break;
   endif
endfor