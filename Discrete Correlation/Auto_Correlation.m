% To evaluate auto-correlation for the sequence x=[1 2 3 4];
% xcorr(x) returns the autocorrelation sequence of x
clc;
clear all;
close all;
x = [1 2 3 4 0 6];
subplot(2,1,1)
stem(x);
xlabel('x');
ylabel('amplitude');
title(' Input Sequence signal');
y = xcorr(x);
subplot(2,1,2)
stem(y)
xlabel('x');
ylabel('amplitude');
title(' Autocorrelation signal');