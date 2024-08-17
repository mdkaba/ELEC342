% Mamadou Diao Kaba 27070179
% Lab 3 question 1 b)
clc;clear;close all;
global n w

rate = input('input the sampling rate: ');
N = floor(2 * rate);

for i = 1:5
    window = input('Input the window size: ');
    n = 0:window * N - 1;
    w=-window*pi:0.05:window*pi;
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