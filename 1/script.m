x = ScopeData(:,1);
y = ScopeData(:,3);
x1 = ScopeData2(:,1);
y1 = ScopeData2(:,2); 
p = plot(x,y,x1,y1,'--');
%p = plot(x,y,'r');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
title('�������������� �������� ������������ ���, u(t) = 2sin(t)');
xlabel('�����, �');
ylabel('������');
grid on;
legend({'y2(t)', 'u2(t)'}, 'FontSize',12);
%legend({'y(t)'}, 'FontSize',12);