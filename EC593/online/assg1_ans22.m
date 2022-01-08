% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
a = linspace(0, 2*pi);
plot(a,sin(a), 'r', 'linewidth', 3);
hold on;
plot(a,cos(a), 'g', 'linewidth', 3);
legend({'sin x','cos x'}, 'Location','southwest', 'FontSize',10);
title('Graph of both sin(x) and cos(x)');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
grid on;
