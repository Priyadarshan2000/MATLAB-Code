% Name: Priyadarshan Ghosh
% Roll no.: 72
% NRZ Unipolar Line Coding
clc;
clf;
N = 7;
n = [1 1 0 1 0 0 1];
%n = randi([0 1], 1, N)
% Unipolar Mapping
for m=1:N
    if n(m) == 1
        nn(m) = 1;
    else
        nn(m) = 0;
    end
end
% NRZ Pulse Shaping
i = 1; 
t = 0:.01:length(n);
for j = 1:length(t)
    if t(j) > i
        i = i + 1;
    end
    y(j) = nn(i);        
end

plot(t,y);
axis([0 N -2 2]);
title('Unipolar NRZ');
grid on;