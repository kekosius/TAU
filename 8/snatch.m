Ak = [0 1; 4 0];
Bk = [0; 1];

syms T x;
Fk = [0 1; -1/T^2 -x/T];

syms p11 p12 p21 p22 k1 k2;
P = [p11 p12; p21 p22];
k = [k1 k2];
eqn1 = Ak == P * A * inv(P);
eqn2 = Bk == P * B;
eqn3 = inv(P) * Fk * P == A - B * k;
sol = solve([eqn1, eqn2, eqn3], [p11, p12, p21, p22, k1, k2]);
p11Sol = double(sol.p11);
p12Sol = double(sol.p12);
p21Sol = double(sol.p21);
p22Sol = double(sol.p22);
%K1 = double(sol.k1);
%K2 = double(sol.k2);
P = [p11Sol p12Sol; p21Sol p22Sol];
K = [sol.k1 sol.k2];