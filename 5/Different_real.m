y0 = 0;
y0_ = 0.1;
L1 = -1.5;
L2 = 1.5;
a1 = -(L1+L2);
a0 = L1*L2;
A = [1 1; L1 L2];
B = [y0; y0_];
C = linsolve(A,B);
C1 = C(1);
C2 = C(2);

func = string(C1) + '*exp(' + string(L1) + '*t)' + '+' + string(C2) + '*exp(' + string(L2) + '*t)';
func_ = string(C1) + '*' + string(L1) + '*exp(' + string(L1) + '*t)' + '+' + string(C2) + '*' + string(L2) + '*exp(' + string(L2) + '*t)';

p = fplot(func);
grid on;
axis([0 4 -0.5 4]);
p(1).LineWidth = 2;
%p(1).Color = 'r';
title('Моделирование свободного движения', 'FontSize', 16);
xlabel('', 'FontSize', 14,'FontWeight','bold');
ylabel('', 'FontSize', 16,'FontWeight','bold');
legend

hold on

p = fplot(func_);
p(1).LineWidth = 2;
p(1).Color = 'g';

label1 = 'y(t)';
label2 = '$\hat{y}$(t)';
legend(label1,label2,'Interpreter','latex')

hold off

disp('a1 = ' + string(a1));
disp('a0 = ' + string(a0));
disp('C1 = ' + string(C1));
disp('C2 = ' + string(C2));
disp('y(t) = ' + func);
disp('dy(t)/dt = ' + func_);

