% Name: Priyadarshan Ghosh
% Roll no.: 72
%Circular Convolution without using CCONV command:
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
disp('The x(n) Sequence:');
disp(x);

h = input('Enter Input Sequence for Signal h(n): '); %[1 2];
l2=length(h);
n2=0:(l2-1);
subplot(3,1,2)
stem(n2,h, 'bo','linewidth', 2,'MarkerSize',5)
title ('Graph of h(n) Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The h(n) Sequence:');
disp(h);

N=max(l1,l2);
x=[x zeros(1,N-l1)]; %Zero adding to make sequences of length N
h=[h zeros(1,N-l2)]; %Zero adding to make sequences of length N
y = zeros(1,N);
for n=1:N
  y(n)=0;
  for k=1:N
    i=n-k+1; %(m-n+1) since we're taking index from 1
    if(i<=0)
      i=N+i; % mod N
    end
    y(n)=y(n)+x(k)*h(i); %Convolution Sum Formula
  end
end
n3=0:(N-1);
subplot(3,1,3)
stem(n3,y, 'go','linewidth', 2,'MarkerSize',5);
title ('Graph of Circularly Convolved Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('Circularly Convolved Sequence:');
disp(y);
