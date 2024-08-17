% Mamadou Kaba 27070179
% Question 3 a) and b)

clc;clear;close all;

% a)

n1= -10:10;
n_positive = 0:10;
x1_positive = exp(-2*abs(n_positive)) .* sin((2*pi/36) .* n_positive);
x1 = [zeros(1, 10), x1_positive];

x2 = zeros(1, 21);
for index = 1:21
    x2(index) = x1(22 - index);
end

even1 = 1/2 * (x1 + x2);
odd1 = 1/2 * (x1 - x2);

% b)

n2=-5:5;
x3= (-1).^(n2-1); 
x4=(-1).^((-1.*n2)-1);
even2 = 1/2*(x3+x4); 
odd2 = 1/2*(x3-x4); 


subplot(4,2,1)
stem(n1,x1)
title('Value of the signal x1[n]')
xlabel('n')
ylabel('x[n]')

subplot(4,2,2)
stem(n1,x2)
title('Value of the mirror signal x[-n]')
xlabel('n')
ylabel('x[-n]')

subplot(4,2,3)
stem(n1,even1)
title('Value of the even signal ')
xlabel('n')
ylabel('even')

subplot(4,2,4)
stem(n1,odd1)
title('Value of the odd signal')
xlabel('n')
ylabel('odd')

subplot(4,2,5)
stem(n2,x3)
title('Value of the signal x2[n]')
xlabel('n')
ylabel('x[n]')

subplot(4,2,6)
stem(n2,x4)
title('Value of the mirror signal x2[-n]')
xlabel('n')
ylabel('x[-n]')

subplot(4,2,7)
stem(n2,even2)
title('Value of the even signal ')
xlabel('n')
ylabel('even')

subplot(4,2,8)
stem(n2,odd2)
title('Value of the odd signal')
xlabel('n')
ylabel('odd')