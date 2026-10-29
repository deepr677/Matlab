% 1. Define the discrete time vector (from -5 to 5)
n = -5:5; 

% 2. Generate the basic signals
impulse = (n == 0);          % 1 when n is 0, else 0
step = (n >= 0);             % 1 when n is positive or 0, else 0
ramp = n .* (n >= 0);        % n multiplied by the step signal
signum = sign(n);            % Built-in MATLAB function for Signum (-1, 0, or 1)

% 3. Plot the signals
figure('Name', 'Basic Signals'); % Open a figure window

subplot(2, 2, 1);
stem(n, impulse, 'filled', 'b');
title('Unit Impulse Signal \delta[n]');
grid on;

subplot(2, 2, 2);
stem(n, step, 'filled', 'r');
title('Unit Step Signal u[n]');
grid on;

subplot(2, 2, 3);
stem(n, ramp, 'filled', 'g');
title('Ramp Signal r[n]');
grid on;

subplot(2, 2, 4);
stem(n, signum, 'filled', 'm');
title('Signum Signal sgn[n]');
grid on;