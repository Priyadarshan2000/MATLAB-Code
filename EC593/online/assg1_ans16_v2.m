% Name: Priyadarshan Ghosh
% Roll no.: 72
clc;
A = [[1:1:9]; zeros(1,9)];
A(2, 6) = 1
A(1:1:2, 4) = 5

A = [reshape([1:1:9],3,3)', zeros(3,3)];
A(2, 6) = 1
A(1:1:3, 4) = 5


% https://in.mathworks.com/help/matlab/learn_matlab/matrices-and-arrays.html