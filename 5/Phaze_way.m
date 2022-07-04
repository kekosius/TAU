clear; clc; close all;
t = 0:pi/400:2*pi;
u =  -0.050559.*exp(0.6.*t).*sin(4.*t +-1.4219);
v = -0.050559.*exp(0.6.*t).*(0.6.*sin(4.*t +-1.4219)+4.*cos(4.*t +-1.4219));
p = plot(u, v); 
grid on

p(1).LineWidth = 2;
%p(1).Color = 'g';
title('Фазовая траектория', 'FontSize', 16);
xlabel('y(t)', 'FontSize', 14);
ylabel('', 'FontSize', 16,'FontWeight','bold');

label2 = '$\hat{y}$(t)';
ylabel(label2,'Interpreter','latex', 'FontSize', 16,'FontWeight','bold')

