clc;
clear all;
close all;
f=input('Enter the Sine wave frequency : ');
f1=f;
f2=2*f;
f3=8*f;
n=0:0.5:20;
x1=sin(2*pi*(f/f1)*n);
x2=sin(2*pi*(f/f2)*n);
x3=sin(2*pi*(f/f3)*n);
figure,
subplot(3,1,1)
plot(x1)
title('Under Sampled Signal Fsamp < 2*Fsig')
xlabel('Samples ---');
ylabel('Amplitude ---')
subplot(3,1,2)
plot(x2)
title('Critical Sampled Signal Fsamp = 2*Fsig')
xlabel('Samples ---')
ylabel('Amplitude ---')
subplot(3,1,3)
plot(x3)
title('Over Sampled Signal Fsamp > 2*Fsig')
xlabel('Samples --->')
ylabel('Amplitude ---')
