y0 = 0.05;
y0_ = 0;
a = 0.6;
w = 4;

fun = @SNAU;
x0 = [-y0,0];
x = fsolve(fun,x0);

L1 = a + 1i*w;
L2 = a - 1i*w;

a1 = -(L1+L2);
a0 = L1*L2;

A = x(1);
f = x(2);

func = string(A) + '*exp(' + string(a) + '*t)' + '*' + 'sin(' + string(w) + '*t +' + string(f) + ')';
func_ = string(A) + '*exp(' + string(a) + '*t)' + '*(' + string(a) + '*sin(' + string(w) + '*t +' + string(f) + ')+' + string(w) + '*cos(' + string(w) + '*t +' + string(f) + '))';

p = fplot(func);
grid on;
axis([0 6 -10 10]);
p(1).LineWidth = 2;
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

str1 = strrep(func,'*','.*');
str2 = strrep(func_,'*','.*');

disp('a1 = ' + string(a1));
disp('a0 = ' + string(a0));
disp('A = ' + string(A));
disp('phi = ' + string(f));
disp('y(t) = ' + str1);
disp('dy(t)/dt = ' + str2);