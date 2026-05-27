clc;
clear all;
close all;
% Define input sequences 
x = [1 2 3 4];
h = [1 1 1];
% Cross-correlation 
[y, n_y] = xcorr(x, h);
n_x = 0:length(x)-1;
n_h = 0:length(h)-1;
%  Visualization 
subplot(3,1,1);
stem(n_x, x, 'filled');   
xlabel('n');
ylabel('x[n]');
title('input sequence x');
grid on;
subplot(3,1,2);
stem(n_h, h, 'filled','r');   
xlabel('n');
ylabel('h[n]');
title('input sequence h');
grid on;
subplot(3,1,3);
stem(n_y, y, 'filled','g');   
xlabel('Lag');
ylabel('y[n]');
title(' Discrete Signal Cross-correlation');
grid on;
disp('Discrete Signal Cross-correlation result (y):');
disp(y);