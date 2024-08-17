% Mamadou Diao Kaba 27070179
% Lab 3 question 1 a)
clc;clear;close all;
global n w
x1 = input('Input the number of periods: ');
x2 = input('Input the step size of the frequency interval: ');
w=-x1*pi:x2:x1*pi;

for i = 1:5
    rate = input('input the sampling rate: ');
    N = floor(2 * rate);
    n = 0:(2*N) - 1;
    x=sin(2*pi*n/N);
    x_dtft=func_dtft(x);
    figure(i)
    subplot(2,1,1)
    stem(n,x)
    title('Signal')
    xlabel('n')
    ylabel('x[n]')

    subplot(2,1,2)
    plot(w,abs(x_dtft))
    title('Fourier Transform') 
    xlabel('Frequency (rad/sample)')
    ylabel('|X(f)|')
end