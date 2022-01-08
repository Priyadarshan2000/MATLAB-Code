% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
x=linspace(0,2*pi, 15);
plot(x,sin(x),'b --o', 'linewidth', 0.5, 'MarkerSize',3, x,cos(x), 'm --o', 'linewidth', 0.5, 'MarkerSize',3)
axis([0, 2*pi, -1, +1]);
legend({'sin x','cos x'}, 'Location','southwest', 'FontSize',13);
legend('boxoff');
title('Graph of both sin(x) and cos(x)');
xlabel('Angle');
ylabel('Amplitude');
grid on;
box off;