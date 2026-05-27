clc;
clear all;
close all;
xn = [2,2]
hn = [1,1,-1]
l1 = length(xn)
l2 = length(hn)
xx = max(l1, l2);
disp('Initializing array with zeros')
yn = zeros(1, xx)
disp('Displaying elements after Circular Convolution')
yn = cconv(xn, hn, xx)
stem(yn)