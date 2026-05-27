clc;
clear all;
close all;
t=0:0.1:1;
r=t;
subplot(1,1,1);
stem(r);
axis tight;
xlabel('n');
ylabel('Amplitude');
title('Ramp')