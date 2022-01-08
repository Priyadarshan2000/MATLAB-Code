% Name: Priyadarshan Ghosh
% Roll no.: 72
%Circular Convolution without using CCONV command:
clc;
clf;
x = [1 7 4 2 1]; %input('Enter Input Sequence for Signal x(n): '); %[1 2 3 1];
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

h = [1 -1 2]; %input('Enter Input Sequence for Signal h(n): '); %[1 2 1 1];
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

N = length(x)+length(h)-1;
y = conv(x,h);
disp('Linearly Convolved Sequence:');
disp(y);

% Finding Circular convolution using Linear convolution
cN = max(l1,l2);
cy = [];
for i = 1:cN
   cy = [cy y(i)];
end
for j = cN + 1:N
  cy(j - cN) = cy(j - cN) + y(j);
end
n3=0:(cN-1);
subplot(3,1,3)
stem(n3,cy, 'go','linewidth', 2,'MarkerSize',5);
title ('Graph of Circularly Convolved Sequence');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('Circularly Convolved Sequence:');
disp(cy);
