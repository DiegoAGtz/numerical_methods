A = [5 -2 0; -2 3 -1; 0 -1 1];

b_1 = -trace(A)
b_2 = -1/2 * (trace(A^2) + b_1*trace(A))
b_3 = -1/3 * (trace(A^3) + b_1*trace(A^2) + b_2*trace(A))
