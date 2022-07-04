p = fplot('1*(1/sqrt(1 + w^2 * (1/5.5)^2))*(1/sqrt(1 + w^2 * (1/6)^2))*(1/(w))');
p(1).LineWidth = 2;
p(1).Color = 'r';
axis([0 40 0 30]);
title('Амплитудно-частотная характеристика', 'FontSize', 16);
xlabel('\omega', 'FontSize', 16,'FontWeight','bold');
ylabel('A(\omega)', 'FontSize', 16,'FontWeight','bold');
grid on;