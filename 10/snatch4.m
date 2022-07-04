A = [0 1; 4 0];
B = [1; 1];
C = [3 0];

a = 2.9;
b = -2.6;
r = abs(b)/1.5;
v = 2;
R = 0;
Q = eye(2);

syms p11 p12 p22 k1 k2;
P = [p11 p12; p12 p22];
K = [k1 k2];

eqn1 = transpose(A - B*K - b*eye(2))*P*(A - B*K - b*eye(2)) - r^2 * P == -Q;
eqn2 = K == inv(R + transpose(B)*P*B)*transpose(B)*P*(A - b*eye(2));

sol = solve([eqn1,eqn2], [p11, p12, p22, k1, k2]);
p11Sol = double(sol.p11);
p12Sol = double(sol.p12);
p22Sol = double(sol.p22);
k1Sol = double(sol.k1);
k2Sol = double(sol.k2);

for i = 1:2
    eig([p11Sol(i) p12Sol(i); p12Sol(i) p22Sol(i)]);
end

K = [k1Sol(2) k2Sol(2)]
P = [p11Sol(2) p12Sol(2); p12Sol(2) p22Sol(2)];








%------------------------------------------------------------------------+



An = [0 4; 1 0];
Cn = [0 1];

A = An';
B = Cn';

syms p11 p12 p21 p22 k1 k2;
P = [p11 p12; p21 p22];
%K = [k1 k2];
L = [k1; k2];

%eqn1 = transpose(A - B*K - b*eye(2))*P*(A - B*K - b*eye(2)) - r^2 * P == -Q;
%eqn2 = K == inv(R + transpose(B)*P*B)*transpose(B)*P*(A - b*eye(2));

eqn1 = transpose(A - L*C - b*eye(2))*P*(A - L*C - b*eye(2)) - r^2 * P == -Q;
eqn2 = L' == inv(R + transpose(B)*P*B)*transpose(B)*P*(A - b*eye(2));

sol = solve([eqn1,eqn2], [p11, p12, p21, p22, k1, k2]);
p11Sol = double(sol.p11);
p12Sol = double(sol.p12);
p21Sol = double(sol.p21);
p22Sol = double(sol.p22);
k1Sol = double(sol.k1);
k2Sol = double(sol.k2);

%for i = 1:2
%    eig([p11Sol(i) p12Sol(i); p21Sol(i) p22Sol(i)]);
%end

%K = [k1Sol(2) k2Sol(2)]
%P = [p11Sol(2) p12Sol(2); p21Sol(2) p22Sol(2)];

L = [k1Sol; k2Sol]
P = [p11Sol p12Sol; p21Sol p22Sol];

%L = eig(A-B*K);

x1 = -b;
y1 = 0;
x2 = L(1);
y2 = 0;
x3 = L(2);
y3 = 0;


A = [0 1; 4 0];
B = [1; 1];
C = [3 0];




