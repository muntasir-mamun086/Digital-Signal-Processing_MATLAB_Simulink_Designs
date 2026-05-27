clc; 
clear all; 
close all;
x=input('Enter the 1st sequence ');
h=input('Enter the 2nd sequence ');
n1=length(x);
n2=length(h);
N=n1+n2-1;
x1=[x zeros(1,N-n1)];
h1=[h zeros(1,N-n2)];
for n=1:N
for m=1:N
if n>m
H(m,n)=0;
else
H(m,n)=h1(m-(n-1));
end
end
end
y=(H*x1');
disp(y')
subplot(3,1,1);
stem(x);
title('Sequnce 1');
xlabel('Samples --- >');
ylabel('Amplitude');
subplot(3,1,2);
stem(h);
title('Sequnce 2');
xlabel('Samples --- >');
ylabel('Amplitude');
subplot(3,1,3);
stem(y);
title('Linear Convlution Output');
xlabel('Samples --- >');
ylabel('Amplitude');