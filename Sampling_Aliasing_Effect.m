clc;
clear all;
close all;
% Original (continuous-time) signal parameters
Am = 1;              % Amplitude
fm = 10;             % Message signal frequency (Hz)
t = 0:0.001:1;       % Continuous time axis
x = Am * sin(2*pi*fm*t);
% Now the sampling parameters
fs1 = 50;             % Sampling frequency > 2*fm (No aliasing)
fs2 = 12;             % Sampling frequency < 2*fm (Aliasing)
ts1 = 0:1/fs1:1;      % Sampling time (no aliasing)
ts2 = 0:1/fs2:1;      % Sampling time (aliasing)
xs1 = Am * sin(2*pi*fm*ts1);
xs2 = Am * sin(2*pi*fm*ts2);
%Plotting the graph
figure;
% Original continuous signal
subplot(3,1,1);
plot(t, x, 'g', 'LineWidth', 1);
grid on;
title('Original Continuous-Time Signal');
xlabel('Time (s)');
ylabel('Amplitude');
% Sampled signal (No aliasing)
subplot(3,1,2);
stem(ts1, xs1, 'r', 'filled');
hold on;
plot(t, x, 'k--');
grid on;
title('Sampling Above Nyquist Rate (No Aliasing)');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Sampled Signal', 'Original Signal');
% Sampled signal (Aliasing)
subplot(3,1,3);
stem(ts2, xs2, 'm', 'filled');
hold on;
plot(t, x, 'k--');
grid on;
title('Sampling Below Nyquist Rate (Aliasing Effect)');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Sampled Signal', 'Original Signal');
