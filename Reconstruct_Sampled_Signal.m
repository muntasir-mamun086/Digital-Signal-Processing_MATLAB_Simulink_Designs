clc;
clear all;
close all;
% Required parameters
A  = 1;          % Amplitude
f  = 2;          % Signal frequency (Hz)
fs = 20;         % Sampling frequency (fs >> 2f)
T  = 1;          % Duration (sec)
% Continuous-time signal 
t = 0:0.0001:T;
xa = A*sin(2*pi*f*t);
% Sampling
n = 0:1/fs:T;
xs = A*sin(2*pi*f*n);
% Reconstruction by interpolation
xr = interp1(n, xs, t, 'spline');
% Plotting the graph
figure;
% Continuous signal
subplot(3,1,1);
plot(t, xa, 'LineWidth', 1.8);
grid on;
title('Continuous-Time Signal');
xlabel('Time (sec)');
ylabel('x_a');
% Discrete signal
subplot(3,1,2);
stem(n, xs, 'filled');
grid on;
title('Discrete-Time  Signal');
xlabel('Samples (n)');
ylabel('x_s');
% Reconstructed signal
subplot(3,1,3);
plot(t, xr, 'LineWidth', 1.8);
grid on;
title('Reconstructed Signal (Looks Continuous)');
xlabel('Time (sec)');
ylabel('x_r');
