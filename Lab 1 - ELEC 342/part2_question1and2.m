% Mamadou Kaba 27070179
% Question 1 and 2

clc;clear;close all;

% Define the range for n
n = 0:9;

% Given input signal x[n]
x = [1, 1, 1, 0, 0, 0, 0, 0, 0, 0];

% Initialize y[n] with the same size as x[n]
y_diff_eq = zeros(1, length(n));

% Compute the response y[n] using the difference equation
for i = 1:length(n)
    if i == 1
        y_diff_eq(i) = x(i); 
    else
        y_diff_eq(i) = x(i) + (1/4) * y_diff_eq(i-1);
    end
end

% Define the impulse response H[n]
H = (1/4).^n;

% Perform the convolution of x[n] and H[n]
y_conv = conv(x, H);


subplot(2,1,1)
stem(n, y_diff_eq)
title('System Response y[n] using Difference Equation')
xlabel('n')
ylabel('y[n]')

subplot(2,1,2)
n_conv = 0:(length(y_conv) - 1);
stem(n_conv, y_conv)
title('System Response y[n] using Convolution')
xlabel('n')
ylabel('y[n]')


