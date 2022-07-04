C = [5 0; 6 0];
syms p;
P = [p 0; 0 p];
A = [0 1; 3 4];
B = [0 0; 1 3];
result = C*(P-A)^(-1) * B;
pretty(result);