Gf = [0 1; -9 0];
Hf = [1 0];
Bf = [2; 6];

G_sh = [0 -(16/3)^2; 1 -32/3];
L_sh = [0; 1];

Mf_sh = sylv(-G_sh,Gf,L_sh.*Hf)
%L_t =-L_sh.*inv(Mf_sh);
%L = transpose(L_t)

Fn = Gf - L*Hf; 

syms c1 c2;
C_sh = [c1 c2];
eqn = C_sh*Bf == 1;
sol = solve(eqn, [c1, c2]);
c1_sol = double(sol.c1);
c2_sol = double(sol.c2);

C_sol = [c1_sol c2_sol];