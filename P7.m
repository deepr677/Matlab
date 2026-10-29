
clc;
clear;
close all;

t = -2*pi:0.01:2*pi;
N = 10;

% 1. Square Wave Fourier Series
sq = zeros(size(t));
for n = 1:2:2*N
    sq = sq + (4/pi)*sin(n*t)/n;
end

% 2. Sawtooth Wave Fourier Series
sw = zeros(size(t));
for n = 1:N
    sw = sw + (2/pi)*(-1)^(n+1)*sin(n*t)/n;
end

% 3. Triangular Wave Fourier Series
tr = zeros(size(t));
for n = 1:2:2*N
    tr = tr + (8/pi^2)*((-1)^((n-1)/2))*sin(n*t)/n^2;
end

% Plot all waveforms
figure('Color','k');

subplot(3,1,1);
plot(t,sq,'b','LineWidth',1.5);
title('Square Wave Fourier Series');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t,sw,'r','LineWidth',1.5);
title('Sawtooth Wave Fourier Series');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t,tr,'m','LineWidth',1.5);
title('Triangular Wave Fourier Series');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

sgtitle('Experiment No. 7: Fourier Series');
