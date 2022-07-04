T1 = 1/5;
T2 = 1/5.5;
syms K;
syms s;

Wt1 = 1/(T1*s + 1);
Wt2 = 1/(T2*s + 1);
Ws = 1/s;

Wo = K*Wt1*Wt2*Ws;
Wos = Wo/(1+Wo);
pretty(Wos);