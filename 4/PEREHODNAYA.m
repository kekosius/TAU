p = fplot('(1-exp(-x*5.5))*(1-exp(-x*6))*x/(1 + (1-exp(-x*5.5))*(1-exp(-x*6))*x)');
p(1).LineWidth = 2;
p(1).Color = 'r';
axis([0 3.5 0 1]);
title('Временная переходная характеристика', 'FontSize', 16);
xlabel('t', 'FontSize', 14);
ylabel('h(t)', 'FontSize', 14);
grid on;