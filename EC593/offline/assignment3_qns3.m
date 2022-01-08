% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
x = [2,3,4]
y = [6,17,34,43,38,24]
[h,r] = deconv(y,x)
l = 0:length(x)-1;
m = 0:length(h)-1;
n = 0:length(y)-1;
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
