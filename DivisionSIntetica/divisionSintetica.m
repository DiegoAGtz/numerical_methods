#fx = [1 2 8 10];
#x = -1.4;

fx = [4 9 -15 1 -40 3];
gx = fx;

ind = [3 -3 1 -1 -4 2 0.5 1.5 -3.5 -3.553 0.075 1.721];

disp(fx);
printf("\n");

for j=1:length(ind)
   printf("%12.8f,", ind(j));
   for i=2:length(fx)
      gx(i) = ind(j) * gx(i-1) + fx(i);
   endfor
   for i=1:length(gx)
      printf("%12.8f,", gx(i));   
   endfor
   printf("\n");
endfor