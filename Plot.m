%%Начальные данные и переменные
N = 999;
x = zeros(1, N + 1);
y = zeros(1, N + 1);
b = 2.8;
c = 0.15;
x(1) = 0.2;
y(1) = 0.1;
%% Построение системы
for i = 1 : N
    x(i + 1) = b * y(1);
    y(i + 1) = x(i) * (1 - x(i)) + c * y(i);
end
%% График
hold on;
grid on; 
plot(1 : N + 1, x(1 : N + 1), 'LineWidth',1,'Color','r','DisplayName','Неполовозрелые');
plot(1 : N + 1, y(1 : N + 1), 'LineWidth',1,'Color','g','DisplayName','Половозрелые');
legend