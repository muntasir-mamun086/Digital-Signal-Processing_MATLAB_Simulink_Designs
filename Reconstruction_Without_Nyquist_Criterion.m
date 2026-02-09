clc;
clear;
close all;
%Parameters
A  = 1;        % Amplitude
f  = 5;        % Original signal frequency (Hz)
fs = 6;        % Sampling frequency (fs < 2f → Nyquist violated)
T  = 1;        % Duration (sec)
% Continuous-time signal
t = 0:0.0001:T;
xa = A*sin(2*pi*f*t);
% Sampling
n = 0:1/fs:T;
xs = A*sin(2*pi*f*n);
% Reconstruction (interpolation)
xr = interp1(n, xs, t, 'spline');
% Plotting the graph
figure;
% Continuous signal
subplot(3,1,1);
plot(t, xa, 'LineWidth', 1.8);
grid on;
title('Continuous Signal ');
xlabel('Time (s)');
ylabel('x_a');
% Discrete signal
subplot(3,1,2);
stem(n, xs, 'filled');
grid on;
title('Sampled Signal (Nyquist Violated)');
xlabel('Discretes (n)');
ylabel('x_s');
% Reconstructed signal
subplot(3,1,3);
plot(t, xr, 'LineWidth', 1.6);
grid on;
title('Reconstructed Signal (Aliasing Effect)');
xlabel('Time (s)');
ylabel('x_r');
