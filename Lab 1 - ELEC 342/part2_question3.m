% Mamadou Kaba 27070179
% Question 3

clc;clear;close all;

% Testing Linearity of Sys1

x1 = 0:9;  
x2 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]; 
a = 2;
b = 3;


y1 = Sys1(x1);
y2 = Sys1(x2);

% Combined input and output
y_comb = Sys1(a * x1 + b * x2);
y_lin = a * y1 + b * y2;

% Check linearity
if all(y_comb == y_lin)
    disp('System (i) is linear with the chosen inputs')
else
    disp('System (i) is not linear with the chosen inputs')
end

% Plot the inputs and outputs for linearity test
figure;
subplot(2, 3, 1);
stem(x1, 'filled');
title('Input x1');
xlabel('n');
ylabel('x1[n]');

subplot(2, 3, 2);
stem(x2, 'filled');
title('Input x2');
xlabel('n');
ylabel('x2[n]');

subplot(2, 3, 3);
stem(a * x1 + b * x2, 'filled');
title('Combined Input');
xlabel('n');
ylabel('a*x1 + b*x2');

subplot(2, 3, 4);
stem(y1, 'filled');
title('Output y1');
xlabel('n');
ylabel('y1[n]');

subplot(2, 3, 5);
stem(y2, 'filled');
title('Output y2');
xlabel('n');
ylabel('y2[n]');

subplot(2, 3, 6);
stem(y_comb, 'filled');
hold on;
stem(y_lin, 'o');
title('Combined Output vs. Linear Combination');
xlabel('n');
ylabel('y_{comb} and y_{lin}');
legend('y_{comb}', 'y_{lin}');

% Initial input data for time-invariance test
x = 0:9;  
k = 2;  % shift amount

% Original output
y = Sys1(x);

% Shifted input
x_shifted = [zeros(1, k), x(1:end-k)];

% Output for shifted input
y_shifted = Sys1(x_shifted);

% Expected output by shifting original output
y_expected = [zeros(1, k), y(1:end-k)];

% Check time-invariance
if all(y_shifted == y_expected)
    disp('System (i) is time-invariant with the chosen inputs')
else
    disp('System (i) is not time-invariant with the chosen inputs')
end

% Plot the inputs and outputs for time-invariance test
figure;
subplot(2, 2, 1);
stem(x, 'filled');
title('Original Input');
xlabel('n');
ylabel('x[n]');

subplot(2, 2, 2);
stem(x_shifted, 'filled');
title('Shifted Input');
xlabel('n');
ylabel('x[n-k]');

subplot(2, 2, 3);
stem(y, 'filled');
title('Original Output');
xlabel('n');
ylabel('y[n]');

subplot(2, 2, 4);
stem(y_shifted, 'filled');
hold on;
stem(y_expected, 'o');
title('Shifted Output vs. Expected Output');
xlabel('n');
ylabel('y_{shifted} and y_{expected}');
legend('y_{shifted}', 'y_{expected}');
