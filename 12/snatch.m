a0 = -1;
a1 = 4;
b0 = -2;
b1 = 1;
w = 3^2;
w0 = 9.2/0.6;
Gamma = [0 1; -9 0];

syms k1 k2 k3 k4 k5;
eqn1 = k5 + a1 + k1*b1 == 5*w0;
eqn2 = w + a0 + k5*a1 + k1*b0 + k2*b1 == 10*w0^2;
eqn3 = k5*w + a1*w + k5*a0 + k2*b0 + k3*b1 == 10*w0^3;
eqn4 = a0*w + k3*b0 + k4*b1 + k5*a1*w == 5*w0^4;
eqn5 = k5*a0*w + k4*b0 == w0^5;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5], [k1, k2, k3, k4, k5]);
K1 = double(sol.k1)
K2 = double(sol.k2)
K3 = double(sol.k3)
K4 = double(sol.k4)
K5 = double(sol.k5)
