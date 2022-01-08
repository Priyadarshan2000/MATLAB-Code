% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
x = input('Enter the x(n)seq: ');
h = input('Enter the h(n)seq: ');
t1 = input('Enter the time of x(n): ');
t2 = input('Enter the time of h(n): ');
c = conv(x, h)
l = 0:length(x)-1;
m = 0:length(h)-1;
n = (t1+t2):(t1+(length(x)-1)+t2+(length(h)-1));
%x(n)
subplot(3,1,1);
stem(l,x,'ro','MarkerSize',3)
title ('x(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
%h(n)
subplot(3,1,2);
stem(m,h,'bo','MarkerSize',3)
title ('h(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
%x(n)*h(n)
subplot(3,1,3);
stem(n,c,'mo','MarkerSize',3)
title ('x(n)*h(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
