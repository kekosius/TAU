A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
D = 3;

a = 2.9;
v = 2;
R = 1;
Q = eye(2);

%An = [0 4; 1 0];
%Cn = [0 1];

%A = An';
%B = Cn';

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
K = inv(R)*transpose(B)*P;

%L = (inv(R)*transpose(B)*P)';


A = [0 1; 4 0];
B = [1; 1];
C = [3 0];
