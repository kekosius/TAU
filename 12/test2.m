Gg = [0 1; 0 0];
Hg = [1 0];
A = [0 1; 4 0];
B = [1; 1];
Bf = [2; 6];
C = [3 0];
D = 3;

syms m11 m12 m21 m22 lg1 lg2;
Lg = [lg1 lg2];
Mg = [m11 m12; m21 m22];
eqn1 = Hg == C*Mg;
eqn2 = Mg*Gg - A*Mg == B*Lg;
sol = solve([eqn1,eqn2], [m11, m12, m21, m22, lg1, lg2]);
m11Sol = double(sol.m11);
m12Sol = double(sol.m12);
m21Sol = double(sol.m21);
m22Sol = double(sol.m22);
Mg = [m11Sol m12Sol; m21Sol m22Sol]

lg1Sol = double(sol.lg1);
lg2Sol = double(sol.lg2);
Lg = [lg1Sol lg2Sol];

A_ = [0 C; zeros(2,1) A];
B_ = [-D; B];
Bg_ = [zeros(2); B*Lg];

G_ = [-15.33 1 0; 0 -15.33 1; 0 0 -15.33];
H_ = [1 0 0];

M_ = sylv(-A_, G_,B_.*H_)
K_ = -H_*inv(M_);

Kl = K_(1)
K = [K_(2) K_(3)]

