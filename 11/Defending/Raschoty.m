Gf = [0 1; -9 0];
Hf = [1 0];
A_sh = [Gf zeros(2); zeros(2) A];
B_sh = [zeros(2,1); B]
C_sh = [Hf C];

Hn_sh = [1 0 0 0]

syms s;
w = 7.8/0.9; 

ans = solve(s^4 + 4*w*s^3 + 6*w^2*s^2 + 4*w^3*s + w^4 == 0);
Gn_sh = diag(round(real(double(ans)),2)) + [0 1 0 0; 0 0 1 0; 0 0 0 1; 0 0 0 0]

Mn = sylv(-transpose(A_sh), Gn_sh, transpose(C_sh)*Hn_sh)
L_sh = transpose(-Hn_sh * inv(Mn))



