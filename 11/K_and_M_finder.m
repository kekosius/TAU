A = [0 1; 4 0];
B = [1; 1];
H = [1 1];
G = [-15 0; 0 -6];

syms m11 m12 m21 m22 k1 k2;
M = [m11 m12; m21 m22];
K = [k1 k2];

eqn1 = B*H == M*G - A*M;
eqn2 = K == -H*inv(M);

sol = solve([eqn1,eqn2], [m11, m12, m21, m22, k1, k2]);
m11Sol = double(sol.m11);
m12Sol = double(sol.m12);
m21Sol = double(sol.m21);
m22Sol = double(sol.m22);
k1Sol = double(sol.k1);
k2Sol = double(sol.k2);

Mk = [m11Sol m12Sol; m21Sol m22Sol]
Kk = [k1Sol k2Sol]