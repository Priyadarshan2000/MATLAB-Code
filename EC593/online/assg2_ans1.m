% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
n1 = -5:5;
%Unit Impulse Sequence
x1 = [zeros(1,5) 1 zeros(1,5)];
subplot(2, 2, 1,'Position',[0.12 0.628 0.3 0.3]);
stem(n1,x1,'ro','MarkerSize',3)
title ('Unit Impulse Sequence');
xlabel('Time');
ylabel('Amplitude');
axis([-6, 6, 0, 1]);
grid on;
box off;
%Unit Step Sequence
x2 = n1 >= 0;
subplot(2, 2, 2,'Position',[0.58 0.628 0.3 0.3]);
stem(n1,x2,'bo', 'MarkerSize',3)
title ('Unit Step Sequence');
xlabel('Time');
ylabel('Amplitude');
axis([-6, 6, 0, 1]);
grid on;
box off;
%Unit Ramp Sequence
n2 = 0:11;
x3 = n2;
subplot(2, 2, 3,'Position',[0.12 0.115 0.3 0.3]);
stem(n2,x3,'go','MarkerSize',3)
title ('Unit Ramp Sequence');
xlabel('Time');
ylabel('Amplitude');
axis([0, 12]);
grid on;
box off;
%Unit Parabolic Sequence
x4 = n2.^2/2;
subplot(2, 2, 4,'Position',[0.58 0.115 0.3 0.3]);
stem(n2,x4,'mo','MarkerSize',3)
title ('Unit Parabolic Sequence');
xlabel('Time');
ylabel('Amplitude');
axis([0, 12]);
grid on;
box off;