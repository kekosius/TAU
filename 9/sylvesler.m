A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
G = [0 -9; 1 -3];
H = [0 1];

Fn = -3;
Gn = [0 -64; 1 -16];
Hn = [0 1];

%Mn = sylv(-Fn,A,Gn.*C);
%L = (-H*inv(M))';

Gn = [0 -64; 1 -16];
Hn = [0 1];

Mg= sylv(-transpose(A), Gn, transpose(C).*Hn)
Lg = (-Hn*inv(Mg))'