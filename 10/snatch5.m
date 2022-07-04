A = [0 1; 4 0];
B = [1; 1];
C = [3 0];

a = 2.9;
v = 2;
R = 1;
Q = eye(2);


syms p11 p12 p22;
P = [p11 p12; p12 p22];

eqn1 = transpose(A)*P + P*A - v*transpose(inv(R)*transpose(B)*P)*R*inv(R)*transpose(B)*P + 2*a*P == -Q;

sol = solve(eqn1, [p11, p12, p22]);
p11Sol = double(sol.p11);
p12Sol = double(sol.p12);
p22Sol = double(sol.p22);

for i = 1:4
    eig([p11Sol(i) p12Sol(i); p12Sol(i) p22Sol(i)]);
end

P = [p11Sol(4) p12Sol(4); p12Sol(4) p22Sol(4)];
K = inv(R)*transpose(B)*P
U = poly(A-B*K);
a0 = U(3);
a1 = U(2);

%Fk = [0 -(16/3)^2; 1 -(32/3)];
Fk = [0 -a0; 1 -a1];

Ak = [0 4; 1 0];
Bk = [3; 3];
Ck = [0 1];

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
L1 = [L1 L2];


H = [0 1];

M = sylv(-A.',Fk,(C.')*H)
L2 = (-H*inv(M))'


