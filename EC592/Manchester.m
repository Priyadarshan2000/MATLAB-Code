% Name: Priyadarshan Ghosh
% Roll no.: 72
% Manchester Line coding
clc;
clf;
N = 7;
%n = randi([0 1], 1, N)
n = [1 1 0 1 0 0 1];
%Binary to Biporlar Conversion
nnn = [];
for m = 1:N
    if n(m) == 0
       nn = [-1 1];
    else
        nn = [1 -1];
    end
    nnn = [nnn nn];
end
% NRZ Pulse Shaping
i = 1; 
l = 0.5;
t = 0:.01:length(n);
for j = 1:length(t)
    if t(j) > l
        i = i + 1;
        l = l + 0.5;
    end
    y(j) = nnn(i);        
end

plot(t,y);
axis([0 N -2 2]);
title('Manchester');
grid on;