% Mamadou Kaba 27070179
% Part 1 Question 2 d)

clc;clear;
Hd = fda_butterworth;
sosMatrix = Hd.sosMatrix;
ScaleValues = Hd.ScaleValues;
[b,a] = sos2tf(sosMatrix, ScaleValues);
b2=round(b);
a2=round(a);

subplot(2,1,1);
zplane(b,a);
title('Z-plane Plot for Original Coefficients');

subplot(2,1,2);
zplane(b2,a2);
title('Z-plane Plot for Rounded Coefficients');
