# fx = x - e^(-x) -> x = g(x) -> g(x) = e^(-x)

x0 = 1;
x = 0;

printf("Iteracion\tValor\tError\n");
for i = 0:10   
   gx = e^(-x);
   if( abs((x_n - x0)/x_n) < 0.000001 )
      i = 10;
   endif
   printf("%f\t%f\t%f\n", i, x_n, abs((x_n - x0)/x_n));
   x0 = x_n;
endfor