% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
n=0:3;
n1 =0:2;
x = n+1
h = 2*(n1==0)+3*(n1==1)+1*(n1==2)
y = conv(x, h)
l = 0:length(x)-1;
m = 0:length(h)-1;
n = 0:(length(x)+length(h)-2);
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
stem(n,y,'mo','MarkerSize',3)
title ('x(n)*h(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;