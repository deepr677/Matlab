
clc;
clear;
close all;

% Input sequences
x = [1 2 3 4];
h = [1 1 1];

% Lengths of sequences
Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

% Initialize output
y = zeros(1,Ly);

% Manual convolution (without conv command)
for i = 1:Lx
    for j = 1:Lh
        y(i+j-1) = y(i+j-1) + x(i)*h(j);
    end
end

% Time indices
nx = 0:Lx-1;
nh = 0:Lh-1;
ny = 0:Ly-1;

% Plot input and output signals
figure('Color','k');

subplot(3,1,1);
stem(nx,x,'filled');
title('Input Sequence x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(nh,h,'filled');
title('Impulse Response h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(ny,y,'filled');
title('Convolution Result y[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

disp('Convolution result:');
disp(y);
