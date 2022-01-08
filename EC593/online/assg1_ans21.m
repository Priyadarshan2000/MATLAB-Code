% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
x=linspace(0,2*pi);
plot(x,sin(x),'r', 'linewidth', 3, x,cos(x), 'g', 'linewidth', 3)
axis([0, 2*pi, -1, +1]);
legend({'sin x','cos x'}, 'Location','southwest', 'FontSize',10);
title('Graph of both sin(x) and cos(x)');
xlabel('Angle');
ylabel('Amplitude');
grid on


%https://in.mathworks.com/help/matlab/ref/legend.html