clc;
clear all; 
close all;
% Original signal parameters
f = 1000;            % Analog signal frequency (1 kHz)
t = 0:1e-6:1e-2;     % Very high resolution time for original signal
x = sin(2*pi*f*t);   % Original analog-like signal
% High sampling frequency (fs >= 2*f)
fs1 = 10000;         % 10 kHz sampling frequency
ts1 = 0:1/fs1:1e-2;
x1 = sin(2*pi*f*ts1);
% Low sampling frequency (fs < 2*f)
fs2 = 1200;           % Only 1.2 kHz (Aliasing)
ts2 = 0:1/fs2:1e-2;
x2 = sin(2*pi*f*ts2);
% Plotting the signal graph
figure;
subplot(3,1,1);
plot(t, x, 'LineWidth',2);
title('Original Continuous Signal (1 kHz)');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,2);
stem(ts1, x1, 'filled'); 
hold on;
plot(t, x, 'g--'); 
title('High Sampling (fs = 10 kHz) – Correct Sampling');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,3);
stem(ts2, x2, 'filled'); 
hold on;
plot(t, x, 'k--');
title('Low Sampling (fs = 1.2 kHz) – Aliasing Occurs');
xlabel('Time (s)');
ylabel('Amplitude');

