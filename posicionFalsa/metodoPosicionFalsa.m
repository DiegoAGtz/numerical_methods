# Programa que calcula la raíz de una ecuacion mediante el método
# de Biseccion
# xa -> valor inferior
# xb -> valor superior
# xc -> valor central

tolerancy = 0.01;
maxIter = 100;
xa = -0.8;
xb = -0.4;
x_ant = 0.01;

fafc = calcularFx(xa) * calcularFx(xb);
if( fafc < 0 )
   printf("%4s,  ", "Iter");
   printf("%16s,  ", "a");
   printf("%16s,  ", "fa");
   printf("%16s,  ", "b");
   printf("%16s,  ", "fb");
   printf("%16s,  ", "c");
   printf("%16s,  ", "fc");
   printf("%16s,  ", "m");   
   printf("%16s,\n", "Error");
   for i=0:maxIter
      m = (calcularFx(xa) - calcularFx(xb))/(xa - xb);
      xc = xb - calcularFx(xb)/m;      
      fafc = calcularFx(xa) .* calcularFx(xc);
      printf("%4i,  ", i);
      printf("%18.9f,  ", xa);
      printf("%18.9f,  ", calcularFx(xa));
      printf("%18.9f,  ", xb);
      printf("%18.9f,  ", calcularFx(xb));
      printf("%18.9f,  ", xc);
      printf("%18.9f,  ", calcularFx(xc));
      printf("%18.9f,  ", m);
      error = abs((abs(xc) - abs(x_ant))/abs(xc)).*100;      
      if( fafc <= 0 )
         xb = xc;    
      else         
         xa = xc;  
      endif
           
      printf("%18.9f,\n", error);
      if( error < tolerancy )
         printf("\nResultado encontrado en la iteracion: %i\n", i);
         printf("El valor es: %.10f\n", xc);
         printf("El error es: %.10f\n", error);
         break;
      endif      
      x_ant = xc;
   endfor
endif