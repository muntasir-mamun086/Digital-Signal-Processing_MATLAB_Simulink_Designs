clc; 
clear all; 
close all;
% fs=10000;
%t=0:1/fs:0.01;
% x=sin(2*pi*(4000/fs)*t);
x=input('Enter the sequence:  ');
l=length(x);
n=input('Enter the number of points:  ');
x1=[x zeros(1,n-l)];
y=zeros(1,n);
for k=1:1:n
    for j=1:1:n
       y(k)=y(k)+x1(j)*exp(-2*pi*1i*(k-1)*(j-1)/n);
    end
end
display(y)
subplot(211)
stem(x)
xlabel('Samples')
ylabel('Amplitude')
title('Input Sequence')
subplot(212)
stem(abs(y))
xlabel('Samples')
ylabel('Amplitude')
title('DFT Output-Magnitude')