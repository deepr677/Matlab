% 1. Define the Time Vectors
t = 0:0.01:2;       % Continuous time 't' from 0 to 2 seconds (high resolution)
n = 0:1:20;         % Discrete time 'n' from 0 to 20 samples (integer steps)

% 2. Generate a 1 Hz Sine Wave Signal
f = 1;              % Frequency in Hertz
x_cont = sin(2 * pi * f * t);       % Continuous signal x(t)
x_disc = sin(2 * pi * f * (n/10));  % Discrete sequence x[n] sampled 10 times per sec

% 3. Visualize the Signals
figure;             % Opens a new figure window

% Top Plot: Continuous Time
subplot(2, 1, 1);   % Create a 2-row, 1-column grid, plot in the 1st position
plot(t, x_cont, 'b', 'LineWidth', 1.5);
title('Continuous-Time Signal: x(t)');
xlabel('Time (seconds)'); 
ylabel('Amplitude');
grid on;

% Bottom Plot: Discrete Time
subplot(2, 1, 2);   % Plot in the 2nd position
stem(n, x_disc, 'r', 'filled'); 
title('Discrete-Time Sequence: x[n]');
xlabel('Sample Index (n)'); 
ylabel('Amplitude');
grid on;