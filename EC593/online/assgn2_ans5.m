% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
n1 = -5:5;
for i = 1:length(n1)
    if i >= length(n1)/2
        x1(i) = n1(i);  % x is equal to n
    else 
        x1(i) = 0;
    end
end

stem(n1,x1, 'MarkerSize',3);
title ('Unit Ramp Sequence');
xlabel('Discrete Time');
ylabel('Amplitude');
axis([-5, 5]);
grid on;