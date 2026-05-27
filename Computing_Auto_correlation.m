clc; 
clear all; 
close all;
x=input('Enter the first sequence');
yr=fliplr(x);
disp(yr);
x1=length(x);
y1=length(yr);
n=x1+y1-1;
x=[x,zeros(1,n-x1)];
yr=[yr,zeros(1,n-y1)];
z=x;
h=zeros(n,n);
k=0;
for j=1:n
    for k=0:n-1
        if(j+k<=n)
            h(j+k,j)=x(k+1);
        else
            h(j+k-n,j)=x(k+1);
        end
    end
end
c=(h*yr')';
disp('correlated output=')
disp(c)
subplot(2,1,1)
stem(z)
title('signal 1')
xlabel('samples')
ylabel('amplitude')
subplot(2,1,2)
stem(c)
title('auto-correlation output')
xlabel('samples')
ylabel('amplitude')