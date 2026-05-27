clc; 
clear all; 
close all;
x=input('Enter the sequence 1 ');
h=input('Enter the sequence 2 ');
m=length(x);
n=length(h);
N=max(m,n);
s=m-n;
j=1;
z=[];
if(s==0)
h=[h,zeros(1,s)];
else
x=[x,zeros(1,-s)];
h=[h,zeros(1,s)];
end
for n=1:N
y=0;
for i=1:N
j=(n-i)+1;
if(j<=0)
j=N+j;
end
y=y+(x(i)*h(j));
end
z=[z y];
end
subplot(3,1,1)
stem(x)
title('Signal 1')
xlabel('Samples --- >')
ylabel('Amplitude')
subplot(3,1,2)
stem(h)
title('Signal 2')
xlabel('Samples --- >')
ylabel('Amplitude')
subplot(3,1,3)
stem(z)
title('Circular Convulution Output')
xlabel('Samples --- >')
ylabel('Amplitude')