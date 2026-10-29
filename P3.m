clc;
clear;
close all;

t = -5:0.01:5;

% Create black background figure
figure('Color','k','Position',[100 50 1200 850]);

% 1. Sine and Cosine
subplot(3,2,1);
plot(t,sin(2*pi*t),'c','LineWidth',2);
hold on;
plot(t,cos(2*pi*t),'y','LineWidth',2);
title('Sine and Cosine Signals','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
legend('Sine','Cosine','TextColor','w','Color','k');
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% 2. Sinc Function
subplot(3,2,2);
y = ones(size(t));
k = (t ~= 0);
y(k) = sin(pi*t(k))./(pi*t(k));
plot(t,y,'c','LineWidth',2);
title('Sinc Function','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% 3. Triangle Waveform
subplot(3,2,3);
y = 2*abs(2*(t-floor(t+0.5)))-1;
plot(t,y,'y','LineWidth',2);
title('Triangle Waveform','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% 4. Rectangular Pulse
subplot(3,2,4);
y = double(abs(t)<=1);
plot(t,y,'m','LineWidth',2);
title('Rectangular Pulse','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
ylim([-0.2 1.2]);
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% 5. Sawtooth Waveform
subplot(3,2,5);
y = 2*(t-floor(t+0.5));
plot(t,y,'g','LineWidth',2);
title('Sawtooth Waveform','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% 6. Exponential Function
subplot(3,2,6);
y = exp(-abs(t));
plot(t,y,'r','LineWidth',2);
title('Exponential Function','Color','w','FontSize',14,'FontWeight','bold');
xlabel('Time (t)','Color','w','FontSize',11);
ylabel('Amplitude','Color','w','FontSize',11);
grid on;
set(gca,'Color','k','XColor','w','YColor','w','FontSize',10);

% Main title
sgtitle('EXPERIMENT NO. 3: CONTINUOUS-TIME SIGNALS', ...
    'Color','w','FontSize',18,'FontWeight','bold');

% Make figure background black
set(gcf,'InvertHardcopy','off');
