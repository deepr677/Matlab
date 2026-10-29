
clc;
clear;
close all;

% Define sequence x[n] = (0.5)^n u[n]
n = 0:10;
x = (0.5).^n;

% Z-transform: X(z) = 1/(1 - 0.5/z)
% ROC: |z| > 0.5

% 1. Plot input sequence
figure('Color','k');

subplot(1,2,1);
stem(n,x,'b','filled','LineWidth',1.5);
title('Discrete-Time Signal x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% 2. Plot ROC in the Z-plane
subplot(1,2,2);

theta = linspace(0,2*pi,500);
r = 0.5;

% Draw pole and ROC boundary
plot(r*cos(theta),r*sin(theta),'r--','LineWidth',2);
hold on;

% Shade the ROC outside the circle
[xx,yy] = meshgrid(linspace(-2,2,400));
R = sqrt(xx.^2 + yy.^2);
contourf(xx,yy,double(R > r),[0.5 0.5],...
    'LineColor','none');

% Redraw boundary and mark pole
plot(r*cos(theta),r*sin(theta),'r--','LineWidth',2);
plot(0.5,0,'rx','MarkerSize',10,'LineWidth',2);

axis equal;
xlim([-2 2]);
ylim([-2 2]);
title('Region of Convergence (ROC)');
xlabel('Real Axis');
ylabel('Imaginary Axis');
grid on;
hold off;

sgtitle('Experiment No. 10: Z-Transform and ROC');

% Display result
disp('Z-transform: X(z) = 1/(1 - 0.5/z)');
disp('Region of Convergence: |z| > 0.5');
disp('Pole: z = 0.5');
