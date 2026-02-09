clc;
clear all;
close all;
%Continuous time signal
A = 1;          % Amplitude
f = 0.01;       % Signal frequency (Hz)
t = 0:1:100;    % Continuous time axis
x = A*sin(2*pi*f*t);
fs = 0.1;               % Sampling frequency
n = 0:1/fs:100;         % Discrete time index
xs = A*sin(2*pi*f*n);   % Sampled signal
%Plotting the graph
figure;
% Continuous-time signal
subplot(2,1,1);
plot(t, x, 'g', 'LineWidth', 2);
grid on;
title('Original Continuous Signal');
xlabel('Time');
ylabel('Amplitude');
% Sampled signal
subplot(2,1,2);
stem(n, xs, 'k', 'filled');
grid on;
title('Sampled Signal with Sampling Frequency');
xlabel('Time');
ylabel('Amplitude');
