% Name: Priyadarshan Ghosh
% Roll no.: 72
% RZ bipolar Line Coding
clc;
clf;
N = 7;
%n = randi([0 1], 1, N)
n = [1 1 0 1 0 0 1];
% Bipolar Mapping
f = 1;
for m=1:N
    if n(m) == 1
        if f == 1
            nn(m)=1;
            f = -1;
        else
            nn(m) = -1;
            f = 1;
        end
    else
        nn(m) = 0;
    end
end
% RZ Pulse Shaping
i = 1; 
a = 0;
b = 0.5;
t = 0:.01:length(n);
for j = 1:length(t)
    if t(j) >= a && t(j) <= b
        y(j) = nn(i);
    elseif t(j) > b && t(j) <= i
        y(j) = 0;
    else
        i = i + 1;
        a = a + 1;
        b = b + 1; 
    end      
end

plot(t,y);
axis([0 N -2 2]);
title('Bipolar RZ');
grid on;