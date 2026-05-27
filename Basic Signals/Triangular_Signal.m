clc;
clear all;
close all;
t=-1:0.01:1;
w=2;
y=tripuls(t,w);
plot(t,y);
title('Triangular Signal');
xlabel('time---->');
ylabel('y(t)')