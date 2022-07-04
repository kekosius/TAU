A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
K = [3.4074 7.2593];
G = [0 -(16/3)^2; 1 -32/3];
H = [0 1];

Ak = [0 4; 1 0];
Bk = [3; 3];
Ck = [0 1];
Fk = [0 -(16/3)^2; 1 -(32/3)];

M = sylv(-A.',G,(C.')*H);


syms p11 p12 p21 p22 l1 l2;
P = [p11 p12; p21 p22];
l = [l1; l2];
eqn1 = Ak == P * A * inv(P);
eqn2 = Ck == C * inv(P);
eqn3 = inv(P) * Fk * P == A - l*C;
sol = solve([eqn1, eqn2, eqn3], [p11, p12, p21, p22, l1, l2]);
p11Sol = double(sol.p11);
p12Sol = double(sol.p12);
p21Sol = double(sol.p21);
p22Sol = double(sol.p22);
L1 = double(sol.l1);
L2 = double(sol.l2);
P = [p11Sol p12Sol; p21Sol p22Sol];
L = [L1; L2];
