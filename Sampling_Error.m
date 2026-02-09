clc;
clear all;
close all;
fs_list = [20, 30, 40, 50, 100, 150, 200, 700]; % Sampling frequencies list
f = 10; % Signal frequency (Hz)
t1 = linspace(0, 1, 100); % Time vector for original signal
y1 = 10 * sin(2 * pi * f * t1); % Original continuous signal
figure;
stem(t1, y1); % Plot original signal samples and it draws a stem plot
title('Discrete Time – Discrete Valued Graph of a sine Wave (After Sampling) ');
xlabel('Time (s)');
ylabel('Amplitude');
y_sample = zeros(size(fs_list)); % Preallocate error array
for i = 1:length(fs_list)
    fs = fs_list(i);
    t2 = 0:1/fs:1; % include 1 second point
    y2 = sin(2 * pi * f * t2); % Sampled signal (amplitude 1, like Python code)
    y_interp = interp1(t2, y2, t1, 'linear'); % Linear interpolation
    % Calculate mean absolute error between original and interpolated signal
    error = mean(abs(y1 - y_interp));
    y_sample(i) = error;
end
figure;
plot(fs_list, y_sample, 'o-', 'LineWidth', 2);
title('Sampling Error vs Sampling Frequency Curve');
xlabel('Sampling frequency (Hz)');
ylabel('Sampling error');
grid on;
