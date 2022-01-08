% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
A = [1:1:9]
Z = zeros(1,9);
A = [A; Z];
A(2, 6) = 1
A(1:1:2, 4) = 5

A = [1:1:9];
A = reshape(A,3,3)'
Z = zeros(3,3);
A = [A, Z];
A(2, 6) = 1
A(1:1:3, 4) = 5

% https://in.mathworks.com/help/matlab/learn_matlab/matrices-and-arrays.html
