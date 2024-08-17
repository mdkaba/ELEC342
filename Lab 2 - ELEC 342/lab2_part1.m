% Mamadou Diao Kaba 27070179
% Question 1,2,3

clc;clear;close all;

n=-10:10;
x = zeros(1, length(n));
x(n >=-2 & n <= 2) = 1 ;



w = 0:0.3:2*pi;

for i=1:length(w)
    sum=0;
    for k=1:length(n)
        sum = sum + (x(k)*exp(-1j*w(i)*n(k)));
    end
    x_dtft(i) = sum;
end

x_fft = fft(x);

x_ifft = ifft(x_fft);

subplot(5,1,1)
stem (n,x)
xlabel('n');
ylabel('x[n]');
title('Rectangular pulse');

subplot(5,1,2)
plot(w,abs(x_dtft1))
xlabel('w')
ylabel('x_{dtft}')
title('DTFT of the system 1')

subplot(5,1,3)
plot(w2,abs(x_dtft2))
xlabel('w')
ylabel('x_{dtft}')
title('DTFT of the system 2')

subplot(5,1,4)
plot(w2,abs(x_fft))
xlabel('w')
ylabel('x_{fft}')
title('FFT of the system 2')

subplot(5,1,5)
stem(n,x_ifft)
xlabel('n')
ylabel('x_{ifft}')
title('IFFT of the system 2')