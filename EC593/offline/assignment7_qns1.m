% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
N = 15;%input("Enter number of points: ");
n = -((N-1)/2) : ((N-1)/2);
W = boxcar(N);
%W = bartlett(N);
subplot(3,1,1);
stem(n,W);
xlabel("Time");
ylabel("Amplitude");
title("Rectangular Window");
grid on;
w = -pi:0.001:pi;
y = freqz(W,1,w);
subplot(3,1,2);
plot(w/(2*pi),y);
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Response");
grid on;
subplot(3,1,3);
plot(w/(2*pi), 20*log10(abs(y)));
xlabel("Frequency");
ylabel("Amplitude in dB");
title("Magnitude Response");
grid on;