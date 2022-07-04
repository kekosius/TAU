T2 = 1/6;
fplot('0*x', [0 0.1]);
hold on
f = fplot('(x+1/5)/(x*1/5)', [0 0.1]);
f(1).Color = 'g';
hold off
