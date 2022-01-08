% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
clf;
n1 = -5:15;
for i = 1:length(n1)
    if n1(i) >= 0
        x1(i) = n1(i).^2/2;
    else 
        x1(i) = 0;
    end
end

stem(n1,x1,'bo','linewidth',1.5,'MarkerSize',3);
title ('Unit Parabolic Sequence');
xlabel('Time');
ylabel('Amplitude');
axis([-5, 16]);
grid on;
box off;