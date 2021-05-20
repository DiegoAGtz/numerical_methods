# Programa que calcula la raíz de una ecuacion mediante el método
# de Biseccion
# xa -> valor inferior
# xb -> valor superior
# xc -> valor central

tolerancy = 0.0001;
maxIter = 100;
xa = -0.8;
xb = -0.4;
x_ant = 0;

fafc = calcularFx(xa) * calcularFx(xb);
if( fafc < 0 )
   printf("%4s,\t", "Iter");
   printf("%16s,\t", "a");
   printf("%16s,\t", "fa");
   printf("%16s,\t", "b");
   printf("%16s,\t", "fb");
   printf("%16s,\t", "c");
   printf("%16s,\t", "fc");
   printf("%16s,\n", "Error");
   for i=0:maxIter
      xc = (xa + xb)/2;
      fafc = calcularFx(xa) .* calcularFx(xc);
      printf("%4i,\t", i);
      printf("%18.9f,\t", xa);
      printf("%18.9f,\t", calcularFx(xa));
      printf("%18.9f,\t", xb);
      printf("%18.9f,\t", calcularFx(xb));
      printf("%18.9f,\t", xc);
      printf("%18.9f,\t", calcularFx(xc));
      if( fafc <= 0 )
         xb = xc;    
      else         
         xa = xc;  
      endif
      error = abs((abs(xc) - abs(x_ant))/abs(xc)).*100;      
      printf("%18.9f,\n", error);
      if( error < tolerancy )
         printf("\nResultado encontrado en la iteracion: %i\n", i);
         printf("El valor es: %.9f\n", xc);
         printf("El error es: %.9f\n", error);
         break;
      endif 
      x_ant = xc;     
   endfor
endif