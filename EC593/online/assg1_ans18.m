% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
a = linspace(0, 2*pi, 30);
plot(a,sin(a), 'b -o', 'linewidth', 0.5, 'MarkerSize',3);
legend({'sin x'}, 'Location','southwest','FontSize',15,'TextColor','blue');
legend('boxoff');
title('Graph of sin(x)');
xlabel('Angle');
ylabel('Amplitude');
axis([0, 2*pi, -1, +1]);
grid on;
box off;