A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
G = [0 1; -25 0];
H = [1 0];

syms m11 m12 m21 m22 l1 l2;
M = [m11 m12; m21 m22];
L = [l1 l2];

eqn1 = B*L == M*G - A*M;
eqn2 = H == C*M + D*L;

sol = solve([eqn1,eqn2], [m11, m12, m21, m22, l1, l2]);
m11Sol = double(sol.m11);
m12Sol = double(sol.m12);
m21Sol = double(sol.m21);
m22Sol = double(sol.m22);
l1Sol = double(sol.l1);
l2Sol = double(sol.l2);

Msol = [m11Sol m12Sol; m21Sol m22Sol];
Lsol = [l1Sol l2Sol];



%-------------------------------------------------------------

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

Msol = [m11Sol m12Sol; m21Sol m22Sol];
Ksol = [k1Sol k2Sol];

%-------------------------------------------------------------

G = [0 1; -25 0];
H = [1 0];

G_sh = [0 -(16/3)^2; 1 -32/3];
L_sh = [0; 1];

M_sh = sylv(-G_sh,G,L_sh.*H)


