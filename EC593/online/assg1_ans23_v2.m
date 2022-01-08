% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;

a = linspace(0, 2*pi);

subplot(2, 2, 1,'Position', [0.12 0.6 0.37 0.37]);
plot(a,sin(a), 'r', 'linewidth', 2);
title('Graph of y = sin(x)');
xlabel('Angle','FontSize',10,'FontWeight','bold','Color','r');
ylabel('Amplitude','FontSize',10,'FontWeight','bold','Color','r');
legend({'sin(x)'},'FontSize',10,'TextColor','red', 'location', 'southoutside');
legend('boxoff');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

hold on;
subplot(2, 2, 2, 'Position', [0.58 0.6 0.37 0.37]);
plot(a,cos(a), 'g','linewidth', 2);
title('Graph of y = cos(x)');
xlabel('Angle', 'FontSize',10,'FontWeight','bold','Color','g');
ylabel('Amplitude','FontSize',10,'FontWeight','bold','Color','g');
legend({'cos(x)'}, 'FontSize',10,'TextColor','green', 'location', 'southoutside');
legend('boxoff');
axis([0, 2*pi, -1, +1]);
box off;
grid on;


hold on;
subplot(2, 2, 3,'Position', [0.12 0.1 0.37 0.37]);
plot(a,2*sin(a).*cos(a), 'b','linewidth', 2);
title('Graph of y = 2*sin(x).*cos(x)');
xlabel('Angle', 'FontSize',10,'FontWeight','bold','Color','b');
ylabel('Amplitude','FontSize',10,'FontWeight','bold','Color','b');
legend({'2*sin(x).*cos(x)'}, 'FontSize',10,'TextColor','blue', 'location', 'southoutside');
legend('boxoff');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

hold on;
subplot(2, 2, 4,'Position', [0.58 0.1 0.37 0.37]);
plot(a,sin(a)./cos(a), 'm','linewidth', 2);
title('Graph of y = sin(x)./cos(x)');
xlabel('Angle', 'FontSize',10,'FontWeight','bold','Color','m');
ylabel('Amplitude','FontSize',10,'FontWeight','bold','Color','m');
legend({'sin(x)./cos(x)'}, 'FontSize',10,'TextColor','magenta', 'location', 'southoutside');
legend('boxoff');
axis([0, 2*pi, -1, +1]);
box off;
grid on;

% pos = [left bottom width height]