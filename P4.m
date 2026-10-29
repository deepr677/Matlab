clc;
clear;
close all;

% 1. LINEARITY TEST
x1 = [1 0 -1 2];
x2 = [-2 3 2 -3];

a = input('Enter a: ');
b = input('Enter b: ');

y1 = exp(x1);
y2 = exp(x2);

y_add = a*y1 + b*y2;
y_combined = exp(a*x1 + b*x2);

figure(1);
subplot(2,2,1); stem(x1); title('Input x1'); grid on;
subplot(2,2,2); stem(x2); title('Input x2'); grid on;
subplot(2,2,3); stem(y_add); title('a*y1 + b*y2'); grid on;
subplot(2,2,4); stem(y_combined); title('Output of Combined Input'); grid on;

if max(abs(y_add-y_combined)) < 0.001
    disp('Linear for these inputs');
else
    disp('Nonlinear');
end

% 2. TIME INVARIANCE TEST
x = [1 0 -1 2];
k = input('Enter shift k (0 or positive integer): ');

if k < 0 || k ~= floor(k)
    error('Enter a non-negative integer.');
end

x_original = [x zeros(1,10)];
x_shift = [zeros(1,k) x_original];

y_original = exp(x_original);
y_shift_input = exp(x_shift);
y_shift_output = [ones(1,k) y_original];

figure(2);
subplot(2,2,1); stem(x_original); title('Original Input'); grid on;
subplot(2,2,2); stem(x_shift); title('Shifted Input'); grid on;
subplot(2,2,3); stem(y_shift_input); title('Output of Shifted Input'); grid on;
subplot(2,2,4); stem(y_shift_output); title('Shifted Original Output'); grid on;

if max(abs(y_shift_input-y_shift_output)) < 0.001
    disp('Time invariant');
else
    disp('Time variant');
end

% 3. STABILITY TEST
t = 0:0.01:2*pi;
x = sin(t);
y = exp(x);

figure(3);
subplot(2,1,1);
plot(t,x);
title('Input: sin(t)');
grid on;

subplot(2,1,2);
plot(t,y);
title('Output: exp(sin(t))');
grid on;

disp('Output is bounded for this selected input.');
