A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;
K = [3.3200 1.8229];

syms s;
W = C*inv([s 0; 0 s] - (A - B*K))*B + D

sys = tf([3 18.4287 22.8348],[1 5.1429 6.6116]);
bode(sys);