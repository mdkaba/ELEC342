% Mamadou Diao Kaba 27070179
% Lab 3 question 3

clc;clear;close all;

[x1, Fs] = audioread('Original.wav');
sound(x1, Fs);

[x2, Fs] = audioread('Distorted.wav');

L= 44100;
t = 0: L-1;


subplot(4,1,1)
plot(t,x1)

subplot(4,1,2)
plot(t,x2)

x3 = fft(x1);
x4 = fft(x2);

subplot(4,1,3)
plot(abs(x3))

subplot(4,1,4)
plot(abs(x4))