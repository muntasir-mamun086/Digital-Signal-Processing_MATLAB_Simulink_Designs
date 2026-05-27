clc; 
clear all; 
close all;
N = input(' enter N ');
n1 = -2:1:2;
d = [0 0 1 0 0];
subplot(2,2,1)
stem(n1,d)
grid on
xlabel('n')
ylabel('unit impulse')
% Unit Step
n2 = 0:1:N;
x = ones(1, length(n2));
subplot(2,2,2)
stem(n2,x)
grid on
xlabel('n')
ylabel('unit step')
% Unit Ramp
n3 = 0:1:N;
subplot(2,2,3)
stem(n3,n3)
grid on
xlabel('n')
ylabel('unit ramp')
% Exponential
n4 = 0:1:N;
x = exp(1.*n4);
subplot(2,2,4)
stem(n4,x)
grid on
xlabel('n')
ylabel('Exponential')