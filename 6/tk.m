%ezplot('(sqrt(2) * ( pi + atan*((sqrt(2) * (1/2 * (-x^2 - sqrt(x^4 + 22 * x^2 - 23) - 11) + 6))/sqrt(x^2 + sqrt(x^4 + 22 * x^2 - 23) + 11))))/sqrt(x^2 + sqrt(x^4 + 22 * x^2 - 23) + 11)');


%ezplot('(- atan2((-(sqrt(11 + x^2 + sqrt(-23 + 22*x^2 + x^4))/sqrt(2))^2 + 6),(sqrt(11 + x^2 + sqrt(-23 + 22*x^2 + x^4))/sqrt(2))))/(sqrt(11 + x^2 + sqrt(-23 + 22*x^2 + x^4))/sqrt(2))');

ezplot('(sqrt(2)*(atan((sqrt(2)*(1/2*(-K^2 - sqrt(K^4 + 22*K^2 - 23) - 11) + 6))/sqrt(K^2 + sqrt(K^4 + 22*K^2 - 23) + 11)) + pi))/sqrt(K^2 + sqrt(K^4 + 22*K^2 - 23) + 11)', [0 6 0 1]);

grid on;
title('Зависимость \tau(K)', 'FontSize', 16);
xlabel('K', 'FontSize', 12);
ylabel('\tau, c', 'FontSize', 14);