# valores inicialx0 = -1;x1 = 0;tolerancy = 0.000000000001;maxIter = 100;printf("%4s,  ", "Iter");printf("%20s,  ", "x0");printf("%20s,  ", "x1");printf("%20s,  ", "x2");printf("%20s,\n", "Error");for i=2:maxIter+1   x2 = x1 - calcularFx(x1)/calcularFxd(x0,x1);   printf("%4i,  ", i);   printf("%20.15f,  ", x0);   printf("%20.15f,  ", x1);   printf("%20.15f,  ", x2);      error = abs((abs(x2) - abs(x1))/abs(x2)).*100;      printf("%20.15f,\n", error);   if( error < tolerancy )      printf("\nResultado encontrado en la iteracion: %i\n", i);      printf("El valor es: %.15f\n", x2);      printf("El error es: %.15f\n", error);      break;   endif   x0 = x1;   x1 = x2;endfor