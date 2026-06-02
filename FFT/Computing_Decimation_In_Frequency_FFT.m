clc;
clear all;
close all;
x = input('Enter the sequence: ');
l = length(x);
k = 0;
while (2^k) < l
    k = k + 1;
end
x11 = [x zeros(1,(2^k)-l)];
n = length(x11);
y = zeros(1,n);
for j = 1:(n/2)
    x1(j) = x11(j);
end
for j = (n/2+1):n
    x2(j-n/2) = x11(j);
end
for k = 1:n
    for j = 1:(n/2)
   y(k) = y(k) +(x1(j) + exp(-1i*pi*(k-1))*x2(j)) * exp(-2*pi*1i*(j-1)*(k-1)/n);
    end
end
disp(y)
subplot(2,1,1)
stem(x)
xlabel('Samples')
ylabel('Amplitude')
title('Input Sequence')
subplot(2,1,2)
stem(abs(y))
xlabel('Samples')
ylabel('Amplitude')
title('DIF FFT Output-Magnitude')