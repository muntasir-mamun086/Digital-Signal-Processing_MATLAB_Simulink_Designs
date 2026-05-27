clc;
clear all;
close all;
a=6;
t=0:0.001:3;
x=a*sin(2*pi*a*t);
z=exp(-t);
q=x.*z;
subplot(1,1,1);
plot(t,q);
axis tight;
xlabel('n');
ylabel('Amplitude');
title('Damped')