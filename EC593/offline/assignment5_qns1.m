% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
N = 8;
x = [ones(1,3) zeros(1,N-3)];
n = 0: N-1;
subplot(2,2,1);
stem(n,x,'ro','linewidth',2,'MarkerSize', 7);
title('Graph of x(n)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The x(n) sequence is: ');
disp(x);

k = 0:N-1;
X = [zeros(1,N)];
for n = 0:(N-1)
  X(k+1)=X(k+1)+x(n+1)*exp(-j*((2*pi)/N)*n*k);
end

subplot(2,2,2);
stem(k,X,'bo','linewidth',2,'MarkerSize', 7);
title('Graph of X(k)');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The X(k) sequence is: ');
disp(X);

ab = abs(X);
subplot(2,2,3);
stem(k,ab,'go','linewidth',2,'MarkerSize', 7);
title('Graph of abs[X(k)]');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The abs[X(k)] sequence is: ');
disp(ab);

ang = angle(X);
subplot(2,2,4);
stem(k,ang,'mo','linewidth',2,'MarkerSize', 7);
title('Graph of angle[X(k)]');
xlabel('Time');
ylabel('Amplitude');
grid on;
box off;
disp('The angle[X(k)] sequence is: ');
disp(ang);