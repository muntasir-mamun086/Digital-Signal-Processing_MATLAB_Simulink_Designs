clc;
clear all;
close all;
n = -10:10;           % Time index
x = (n == 0);         % Unit impulse at n = 0
stem(n, x, 'filled'); %Plots circles that are hollow at the data points
xlabel('n');
ylabel('Amplitude');
title('Unit-Impulse Signal');
grid on;
