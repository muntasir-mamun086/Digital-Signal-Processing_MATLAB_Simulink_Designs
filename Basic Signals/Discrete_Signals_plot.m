clc;
clear all;
close all;
n = -10:10;  % Time index
% Generate three signals
impulse = (n == 0);       % For Unit-Impulse Signal
step = (n >= 0);          % For Unit-Step Signal
ramp = n .* (n >= 0);     % For Ramp-Signal
% Plot all signals in one figure
figure;
stem(n, impulse, 'r', 'filled');            % Impulse Signal in red
hold on;   
stem(n, step, 'g', 'filled');               % Step Signal in green
stem(n, ramp, 'b', 'filled');               % Ramp Signal in blue
hold off;
xlabel('n');
ylabel('Amplitude');
title('Impulse, Step, and Ramp Signals');
legend('Unit-Impulse Signal', 'Unit-Step Signal', 'Unit-Ramp Signal');
grid on;
