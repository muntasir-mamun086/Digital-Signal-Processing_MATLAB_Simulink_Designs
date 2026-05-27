clc; 
clear all;
close all;
x=[1 2 3 4 ] 
h=[1 2 3 4 ] 
a=length(x); 
b=length(h); 
sum=0;q=b;c=b; 
for i=1:b 
m=i; 
for j=1:a 
if j<q+1 
sum=sum+x(j)*h(m); 
m=m+1; 
end 
end 
y(c)=sum; 
c=c-1; 
sum=0; 
m=0; 
q=q-1; 
end 
sum=0; 
for i=1:a-1 
s=1; 
for j=1:a 
if j>i 
sum=sum+x(j)*h(s); 
s=s+1; 
end    
end 
y2(i)=sum; 
sum=0; 
end            
output=[ y y2]             
subplot 311 
stem(x) 
grid on 
xlabel('......n'); 
ylabel('......x');
subplot 312 
stem(h) 
grid on 
xlabel('......n'); 
ylabel('......x');
subplot 313 
t=-(b-1):1:a-1; 
stem(t,output) 
grid on
xlabel('.......n'); 
ylabel('.......y');
