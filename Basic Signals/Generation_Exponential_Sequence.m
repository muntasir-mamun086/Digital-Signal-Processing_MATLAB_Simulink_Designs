clc;
clear all;
close all;
t=0:0.01:1;
a=5;
z=exp(-a*t);
subplot(1,1,1);
stem(z);
axis tight;
xlabel('n');
ylabel('Amplitude');
title('Exponential')