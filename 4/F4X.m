p = fplot('atan2(-w^3 - 17*w, 4*w^2 + 12)');
p(1).LineWidth = 2;
p(1).Color = 'r';
axis([0 20 -1.6 0.1]);
title('Фазовая частотная характеристика', 'FontSize', 16);
xlabel(' \omega ', 'FontSize', 16,'FontWeight','bold');
ylabel('\psi (\omega)', 'FontSize', 16,'FontWeight','bold');
grid on;