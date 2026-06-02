clc;
clear all;
close all;
x = input('Enter the sequence: ');
l = length(x);
k = 0;
while (2^k) < l
    k = k + 1;
end
x1 = [x zeros(1,(2^k)-l)];
n = length(x1);
y = zeros(1,n);
xe = [];
xo = [];
j = 1;
for k = 1:2:n
    xe(j) = x1(k);
    j = j + 1;
end
j = 1;
for k = 2:2:n
    xo(j) = x1(k);
    j = j + 1;
end
for k = 1:n
    for j = 1:(n/2)
        y(k) = y(k) + xe(j)*exp(-4*pi*1i*(j-1)*(k-1)/n) + exp(-2*pi*1i*(k-1)/n) * xo(j)*exp(-4*pi*1i*(j-1)*(k-1)/n);
    end
end
disp('DIT FFT Output = ');
disp(y);
figure;
subplot(2,1,1);
stem(x);
xlabel('Samples');
ylabel('Amplitude');
title('Input Sequence');
subplot(2,1,2);
stem(abs(y));
xlabel('Samples');
ylabel('Amplitude');
title('DIT FFT Output - Magnitude');