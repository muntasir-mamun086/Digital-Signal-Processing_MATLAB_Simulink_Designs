clc; 
clear all; 
close all;
t = 0:1:20; % Time stamp
% Signal-1
x1 = zeros(size(t));
x1(6:16) = ones(1,11); % Defining the rectangular signal
subplot(3,2,1),
stem(t,x1,'filled','linewidth',2)
title('Signal-1 in Time Domain'),
grid on
xlim([t(1)-0.5 t(end)+0.5])
ylim([0 max(x1)+0.2])
xlabel('Sample number, n'),
ylabel('Magnitude, x1[n]')
xf1 = abs(fft(x1))/ceil(length(t)/2); % Transforming the signal in frequency domain
xf1 = xf1(1:11);
f = linspace(0,5,11);
subplot(3,2,2), 
stem(f,xf1,'filled','linewidth',2)
title('Signal-1 in Frequency Domain')
xlim([f(1)-0.5 f(end)+0.5]),
grid on
xlabel('Frequency,f'),
ylabel('Magnitude, |x1(f)|')
% Signal-2
x2 = zeros(size(t));
x2(9:13) = ones(1,5); % Defining the signal
x2(7:8) = ones(1,2)/2; 
x2(14:15) = ones(1,2)/2; % Defining the signal
x2(6) = 1/4; x2(16) = 1/4; % Defining thesignal
subplot(3,2,3), 
stem(t,x2,'filled','linewidth',2)
title('Signal-2 in Time Domain'),
grid on
ylim([0 max(x2)+0.2])
xlabel('Sample number, n'), 
ylabel('Magnitude, x2[n]')
xf2 = abs(fft(x2))/ceil(length(t)/2);  % Transforming the signal in frequency domain
xf2 = xf2(1:11);
subplot(3,2,4), 
stem(f,xf2,'filled','linewidth',2)
title('Signal-2 in Frequency Domain')
xlim([f(1)-0.5 f(end)+0.5]),
grid on
xlabel('Frequency,f'), 
ylabel('Magnitude, |x2(f)|')
% Signal-3
x3 = zeros(size(t));
x3(3:11)=linspace(0,5,9); % Defining the triangular signal
x3(11:end-2)=linspace(5,0,9); % Defining the triangular signal
subplot(3,2,5), 
stem(t,x3,'filled','linewidth',2)
title('Signal-3 in Time Domain'),
grid on
ylim([0 max(x3)+0.5])
xlabel('Sample number, n'), 
ylabel('Magnitude, x3[n]')
xf3 = abs(fft(x3))/ceil(length(t)/2);  % Transforming the signal in frequency domain
xf3 = xf3(1:11);
subplot(3,2,6), 
stem(f,xf3,'filled','linewidth',2)
title('Signal-3 in Frequency Domain')
xlim([f(1)-0.5 f(end)+0.5]),
grid on
xlabel('Frequency,f'), 
ylabel('Magnitude, |x3(f)|')


