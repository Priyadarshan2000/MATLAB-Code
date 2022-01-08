% Name: Priyadarshan Ghosh
% Roll no.: 72
%Circular Convolution using CCONV command:
clc;
clf;

x = input('Enter Input Sequence for Signal x(n): '); %[1 2 3 1];
l1=length(x);
n1=0:(l1-1);
subplot(3,1,1)
stem(n1,x, 'ro','linewidth', 2,'MarkerSize',5)
title ('Graph of x(n) Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;

h = input('Enter Input Sequence for Signal h(n): '); %[1 2 1 1];
l2=length(h);
n2=0:(l2-1);
subplot(3,1,2)
stem(n2,h, 'bo','linewidth', 2,'MarkerSize',5)
title ('Graph of h(n) Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;

N=max(l1,l2);
y=cconv(x,h,N);
n3=0:(N-1);
subplot(3,1,3);
stem(n3,y, 'go','linewidth', 2,'MarkerSize',5);
title ('Graph of Circularly Convolved Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;

disp('The x(n) Sequence:');
disp(x);
disp('The h(n) Sequence:');
disp(h);
disp('Circularly Convolved Sequence:');
disp(y);
