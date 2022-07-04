A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
Gf = [0 1; -9 0];
Hf = [1 0];
Bf = [2; 6];

syms m11 m12 m21 m22 l1 l2;
Mf_O = [m11 m12; m21 m22];
Lf_O = [l1 l2];

eqn1 = B*Lf_O == Mf_O*Gf - (A - B*Kk)*Mf_O;
eqn2 = (C - D*Kk)*Mf_O + D*Lf_O + Hf == 0;

sol = solve([eqn1,eqn2], [m11, m12, m21, m22, l1, l2]);
m11Sol = double(sol.m11);
m12Sol = double(sol.m12);
m21Sol = double(sol.m21);
m22Sol = double(sol.m22);
l1Sol = double(sol.l1);
l2Sol = double(sol.l2);

Mf_O = [m11Sol m12Sol; m21Sol m22Sol]
Lf_O = [l1Sol l2Sol]