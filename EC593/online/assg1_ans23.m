% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;

a = linspace(0, 2*pi);
subplot(2, 2, 1);
plot(a,sin(a), 'r', 'linewidth', 2);
legend({'sin'},'FontSize',10,'TextColor','red');
title('Graph of y = sinx');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

hold on;
subplot(2, 2, 2);
plot(a,cos(a), 'g','linewidth', 2);
legend({'cos'}, 'FontSize',10,'TextColor','green');
title('Graph of y = cosx');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

hold on;
subplot(2, 2, 3);
plot(a,2*sin(a).*cos(a), 'b','linewidth', 2);
legend({'2*sin(x).*cos(x)'}, 'FontSize',10,'TextColor','blue');
title('Graph of y = 2*sin(x).*cos(x)');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

hold on;
subplot(2, 2, 4);
plot(a,sin(a)./cos(a), 'm','linewidth', 2);
legend({'sin(x)./cos(x)'}, 'FontSize',10,'TextColor','magenta');
title('Graph of y = sin(x)./cos(x)');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
box off;
grid on;