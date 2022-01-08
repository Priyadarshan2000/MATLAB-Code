% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
N = input('Enter the number of points: ');
X = [12, (-4+4*j), -4, (-4-4*j), zeros(1,N-4)];
k = 0:N-1;
subplot(2,1,1)
stem(k,X,'ro','linewidth',2,'MarkerSize', 7)
title('Graph of X(k)');
xlabel('Frequency');
ylabel('Amplitude');
grid on;
box off;
disp('The X(k) sequence is: ');
disp(X);

n = 0:(N-1);
x = [zeros(1,N)];
for k = 0:(N-1)
  x(n+1)=x(n+1)+((1/N)*X(k+1)*exp(j*((2*pi)/N)*n*k));
end
subplot(2,1,2)
stem(n,x,'bo','linewidth',2,'MarkerSize', 7)
title('Graph of x(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The x(n) sequence is: ');
disp(x);