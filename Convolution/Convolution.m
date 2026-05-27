clc;
clear all;
close all;
x=[1,2,3,4]
h=[1,1,1]
n_x=0:length(x)-1;
n_h=0:length(h)-1;
y=conv(x,h)
n_y=0:length(y)-1;
subplot(3,1,1)
stem(n_x,x,'b')
xlabel('n')
ylabel('Amplitude')
subplot(3,1,2)
stem(n_h,h,'r')
xlabel('n')
ylabel('Amplitude')
subplot(3,1,3)
stem(n_y,y,'o')
xlabel('n')
ylabel('Amplitude')
title('Discrete Signal Convolution')