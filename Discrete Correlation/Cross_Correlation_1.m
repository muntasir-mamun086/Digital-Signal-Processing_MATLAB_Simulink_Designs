% To evaluate cross-correlation for the sequences x=[1 2 3 4] and h= [4 3 2 1];
clc;
clear all;
close all;
% Define input sequences
x = [1 2 3 4];
h = [4 3 2 1];
subplot(3,1,1);
stem(x,'filled');   
xlabel('n');
ylabel('x[n]');
title('input sequence x');
subplot(3,1,2);
stem(h,'filled');   
xlabel('n');
ylabel('h[n]');
title('input sequence h');
% Cross-correlation
y = xcorr(x,h)   
subplot(3,1,3);
stem(y,'filled');   
xlabel('n');
ylabel('y[n]');
title('Cross-correlation sequence');