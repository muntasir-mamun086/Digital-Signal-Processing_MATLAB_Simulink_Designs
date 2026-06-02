clc;
clear all;
close all;
% Required parameters
A = 1;              % Amplitude
f = 1;              % Signal frequency (Hz)
t = 0:0.001:1;      % Continuous time
fs = 30;            % Sampling frequency
n = 0:1/fs:1;       % Discrete-time index
% Continuous-time signal of Sine Wave
x = A*sin(2*pi*f*t);
% Sampled signal
xs = A*sin(2*pi*f*n);
% Quantisation
L = 16;                 % Number of quantisation levels
xmin = -A;
xmax = A;
delta = (xmax - xmin)/L;
% Quantised signal
xq = xmin + delta * round((xs - xmin)/delta);
q_index = round((xs - xmin)/delta);
disp('Quantised integer values: ');
disp(q_index);
% Plotting the garph
figure;
% Original continuous signal of Sine Wave
subplot(3,1,1);
plot(t, x, 'LineWidth', 1.8);
grid on;
title('Original Continuous-Time Signal of Sine Wave');
xlabel('Time');
ylabel('Amplitude');
%Sampled signal
subplot(3,1,2);
stem(0:length(xs)-1, xs, 'filled');
grid on;
title('Sampled Signal');
xlabel('Sample index');
ylabel('Amplitude');
%Quantised signal
subplot(3,1,3);
stairs(0:length(xq)-1, xq, 'LineWidth', 2);
grid on;
title('Quantised Signal');
xlabel('Sample index');
ylabel('Amplitude');
