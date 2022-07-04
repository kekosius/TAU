A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
Gf = [0 1; -9 0];
Hf = [1 0];
Bf = [2; 6];

syms m11 m12 m21 m22 l1 l2;
Mf = [m11 m12; m21 m22];
Lf = [l1 l2];

eqn1 = B*Lf == Mf*Gf - (A - B*Kk)*Mf - Bf*Hf;
eqn2 = (C - D*Kk)*Mf + D*Lf == 0;

sol = solve([eqn1,eqn2], [m11, m12, m21, m22, l1, l2]);
m11Sol = double(sol.m11);
m12Sol = double(sol.m12);
m21Sol = double(sol.m21);
m22Sol = double(sol.m22);
l1Sol = double(sol.l1);
l2Sol = double(sol.l2);

Mf = [m11Sol m12Sol; m21Sol m22Sol]
Lf = [l1Sol l2Sol]