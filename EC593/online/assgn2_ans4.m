% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
n1 = -5:5;
for i = 1:length(n1)
    if n1(i) >= 0 %1 only for greater than 0
        x1(i) = 1;
    else
        x1(i) = 0;
    end
end

stem(n1,x1, 'MarkerSize',3);
title ('Unit Step Sequence');
xlabel('Discrete Time');
ylabel('Amplitude');
axis([-5, 5, 0, 1]);
grid on;