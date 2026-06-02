clc;  
clear all;
close all;
x=input('Enter the sequence: '); 
N=input('Enter the No. of the points for DFT calculation N: '); 
if N>length(x) 
for i=1:N-length(x) 
x=[x 0]; 
end 
end 
%DFT of x 
W=exp(-j*2*pi/N); 
W1=[]; 
for k=0:1:N-1 
for n=0:1:N-1 
W1(k+1,n+1)=W^(k*n); 
end 
end 
X=x*W1 
Using_Built_in_function=fft(x) 
%IDFT of X 
W=exp(j*2*pi/N); 
W2=[]; 
for k=0:1:N-1 
for n=0:1:N-1 
W2(k+1,n+1)=W^(k*n); 
end 
end 
x=(X*W2)/N 
Using_Built_in_function=ifft(X)