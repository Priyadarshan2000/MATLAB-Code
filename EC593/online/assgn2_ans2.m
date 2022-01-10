% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
N = input("Enter a value:"); %N=7
n1 = 0:2*N;
x1 = n1 >= 0;
x2 = n1 >= N;
x3 = x1 - x2;
%x(n)=u(n)
subplot(3,1,1,'Position',[0.12 0.789 0.5 0.14]);
stem(n1,x1,'ro','linewidth', 2,'MarkerSize',3)
title ('x(n)=u(n)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 2*N, 0, 1]);
grid on;
box off;
%x(n)=u(n-N)
subplot(3,1,2,'Position',[0.12 0.456 0.5 0.14]);
stem(n1,x2,'bo','linewidth', 2,'MarkerSize',3)
title ('x(n)=u(n-N)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 2*N, 0, 1]);
grid on;
box off;
%x(n)=u(n)-u(n-N)
subplot(3,1,3,'Position',[0.12 0.12 0.5 0.14]);
stem(n1,x3,'mo','linewidth', 2,'MarkerSize',3)
title ('x(n)=u(n)-u(n-N)');
xlabel('Time');
ylabel('Amplitude');
axis([0, 2*N, 0, 1]);
grid on;
box off;
