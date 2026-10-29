
clc;
clear;
close all;

% Time and frequency vectors
t = -10:0.01:10;
w = -2*pi:0.01:2*pi;

% Define signals
signals = {
    3.^t,   'Exponential Signal';
    sin(t), 'Sinewave';
    t.^2,   'Parabolic Wave'
    };

for i = 1:size(signals,1)

    x_t = signals{i,1};
    sig_title = signals{i,2};

    % Numerical Fourier Transform
    X_w = trapz(t, ...
        x_t(:).*exp(-1j*(t(:)*w)), 1);

    X_mag = abs(X_w);
    X_phase = angle(X_w);

    % Separate figure for each signal
    figure('Name',sig_title,...
        'NumberTitle','off',...
        'Color','k',...
        'Position',[100 50 1100 850]);

    % 1. Time Domain
    subplot(3,1,1);
    plot(t,x_t,'b','LineWidth',1.5);
    title([sig_title ' - Time Domain'],...
        'FontSize',13,'FontWeight','bold');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
    xlim([-10 10]);

    % 2. Magnitude Spectrum
    subplot(3,1,2);
    plot(w,X_mag,'r','LineWidth',1.5);
    title('Magnitude Spectrum',...
        'FontSize',13,'FontWeight','bold');
    xlabel('Frequency \omega (rad/s)');
    ylabel('|X(\omega)|');
    grid on;
    xlim([-2*pi 2*pi]);

    % 3. Phase Spectrum
    subplot(3,1,3);
    plot(w,X_phase,'m','LineWidth',1.5);
    title('Phase Spectrum',...
        'FontSize',13,'FontWeight','bold');
    xlabel('Frequency \omega (rad/s)');
    ylabel('Phase (rad)');
    grid on;
    xlim([-2*pi 2*pi]);

    sgtitle(['Fourier Transform of ' sig_title],...
        'FontSize',16,'FontWeight','bold');
end
