% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
x = [1 9 5 2 1]
h = [1 3 2]
c = conv(x, h)
l = 0:length(x)-1;
m = 0:length(h)-1;
n = 0:(length(x)+length(h)-2);
%x(n)
subplot(3,1,1);
stem(l,x,'ro','MarkerSize',3)
title ('x(n)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 10, 0, 10]);
grid on;
box off;
%h(n)
subplot(3,1,2);
stem(m,h,'bo','MarkerSize',3)
title ('h(n)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 6, 0, 5]);
grid on;
box off;
%x(n)*h(n)
subplot(3,1,3);
stem(n,c,'mo','MarkerSize',3)
title ('x(n)*h(n)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 8, 0, 40]);
grid on;
box off;