% Mamadou Kaba 27070179
% Question 2 a)

clc;clear;close all;

n=0:10;

x1=sin(2*pi*n/10);
y1=2*x1;

x2=cos(2*pi*n/10); 
y2=2*x2;

x3=5*x1+x2;
y3=2*x3;

y4=5*y1+y2;

if (y3==y4)
    disp('System is linear')
else
    disp('System is not linear')
end 

subplot(4,2,1)
stem(n,x1)
title('Value of the input signal x1[n]')
xlabel('n')
ylabel('x[n]')

subplot(4,2,2)
stem(n,y1)
title('Value of the input signal y1[n]')
xlabel('n')
ylabel('y[n]')

subplot(4,2,3)
stem(n,x2)
title('Value of the input signal x2[n]')
xlabel('n')
ylabel('x[n]')

subplot(4,2,4)
stem(n,y2)
title('Value of the input signal y2[n]')
xlabel('n')
ylabel('y[n]')

subplot(4,2,5)
stem(n,x3)
title('Value of the input signal x3[n]')
xlabel('n')
ylabel('x[n]')

subplot(4,2,6)
stem(n,y3)
title('Value of the input signal y3[n]')
xlabel('n')
ylabel('y[n]')

subplot(4,2,7)
stem(n,y4)
title('Value of the input signal y4[n]')
xlabel('n')
ylabel('y[n]')



