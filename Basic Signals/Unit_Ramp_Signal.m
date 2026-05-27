clc;
clear all;
close all;
n = -10:10;   % Define time index
% Generate ramp signal and multiplies n by 1 for n>=0 and 0 for n<0
x = n .* (n >= 0);
% Plot the unit-ramp signal
figure;
stem(n, x, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit-Ramp Signal');
grid on;

