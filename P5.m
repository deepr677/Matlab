clc;
clear all;
close all;
%1find even and odd part of given signal
s1= [1 2 -3 4 ];
N = length(s1);
n = 0:N-1;
E = (s1 + s1(end:-1:1))/2;
O = (s1 - s1(end:-1:1))/2;

figure; stem(n, E);
title("Even");
figure; stem(n, O);
title("Odd");
disp("Even Part of Signal = ");
disp(E);
disp("Odd Part of Signal = ");
disp(O);
% %2 find energy and power of given signal
% s1= [1 2-3 4 0 0 0 0];
% N = length(s1);
% E = sum(abs(s1).^2);
% P = E/N;
% disp("Energy of Signal = ");
% disp(E);
% disp("Power of Signal = ");
% disp(P);