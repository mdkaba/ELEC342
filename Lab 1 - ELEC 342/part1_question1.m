% Mamadou Kaba 27070179
% Lab 1 Question 1 

clc;clear;close all;

n=0:9;

x1=n;
y1=x1.^2;

x2=sin(2*pi*n/10);
y2=x2.^2;



subplot(2,2,1)
stem(n,x1)
title('Value of the input signal x1[n]')
xlabel('n')
ylabel('x[n]')

subplot(2,2,2)
stem(n,y1)
title('Value of the input signal y1[n]')
xlabel('n')
ylabel('y[n]')

subplot(2,2,3)
stem(n,x2)
title('Value of the input signal x2[n]')
xlabel('n')
ylabel('x[n]')

subplot(2,2,4)
stem(n,y2)
title('Value of the input signal y2[n]')
xlabel('n')
ylabel('y[n]')

total_energy_x1=0;

for i=x1
    total_energy_x1 = total_energy_x1 + i.^2;
end

disp('The total energy in the signal x1[n] is: ')
disp (total_energy_x1)

total_energy_y1=0;

for i=y1
    total_energy_y1 = total_energy_y1 + i.^2;
end

disp('The total energy in the signal y1[n] is: ')
disp (total_energy_y1)

total_energy_x2=0;

for i=x2
    total_energy_x2 = total_energy_x2 + i.^2;
end

disp('The total energy in the signal x2[n] is: ')
disp (total_energy_x2)

total_energy_y2=0;

for i=y2
    total_energy_y2 = total_energy_y2 + i.^2;
end

disp('The total energy in the signal y2[n] is: ')
disp (total_energy_y2)
