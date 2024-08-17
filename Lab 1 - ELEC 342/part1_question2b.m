% Mamadou Kaba 27070179
% Question 2 b)

clc;clear;close all;

% i)
x1 = [0, 1]; 
y1 = x1.^2;

% Test for Linearity (i)
x2 = 3 * x1;  
y2 = x2.^2;

x3 = 5 * x1 + x2;  
y3 = x3.^2;

y4 = 5 * y1 + y2;  

if all(y3 == y4)
    disp('System (i) is linear with x[n] = [0, 1]')
else
    disp('System (i) is not linear with x[n] = [0, 1]')
end

% Test for Time-Invariance (i)
x5 = [0, 0, x1];  
y5 = x5.^2;

y6 = [0, 0, y1];  

if all(y5 == y6)
    disp('System (i) is time-invariant with x[n] = [0, 1]')
else
    disp('System (i) is not time-invariant with x[n] = [0, 1]')
end

% Larger set of values for x[n] from 0 to 10
x1 = 0:10;  
y1 = x1.^2;

% Test for Linearity with larger set (i)
x2 = 3 * x1;  
y2 = x2.^2;

x3 = 5 * x1 + x2; 
y3 = x3.^2;

y4 = 5 * y1 + y2;  

if all(y3 == y4)
    disp('System (i) is linear with larger set of values')
else
    disp('System (i) is not linear with larger set of values')
end

% Test for Time-Invariance with larger set (i)
x5 = [0, 0, x1]; 
y5 = x5.^2;

y6 = [0, 0, y1]; 

if all(y5 == y6)
    disp('System (i) is time-invariant with larger set of values')
else
    disp('System (i) is not time-invariant with larger set of values')
end


% ii) 
x1 = [0, 1];
y1 = 2*x1 + 5*[1, 0];  

% Test for Linearity (ii)
x2 = 3 * x1;  
y2 = 2*x2 + 5*[1, 0];  

x3 = 5 * x1 + x2; 
y3 = 2*x3 + 5*[1, 0];  

y4 = 5 * y1 + y2; 

if all(y3 == y4)
    disp('System (ii) is linear with x[n] = [0, 1]')
else
    disp('System (ii) is not linear with x[n] = [0, 1]')
end

% Test for Time-Invariance (ii)
x5 = [0, 0, x1];
y5 = 2*x5 + 5*[1, 0, 0, zeros(1, length(x5)-3)];

y6 = [0, 0, y1];  

if all(y5 == y6)
    disp('System (ii) is time-invariant with x[n] = [0, 1]')
else
    disp('System (ii) is not time-invariant with x[n] = [0, 1]')
end

% Larger set of values for x[n] from 0 to 10 (ii)
x1 = 0:10; 
y1 = 2*x1 + 5*[1, zeros(1, length(x1)-1)]; 

% Test for Linearity with larger set (ii)
x2 = 3 * x1;  
y2 = 2*x2 + 5*[1, zeros(1, length(x1)-1)];  

x3 = 5 * x1 + x2;  
y3 = 2*x3 + 5*[1, zeros(1, length(x1)-1)]; 

y4 = 5 * y1 + y2;  

if all(y3 == y4)
    disp('System (ii) is linear with larger set of values')
else
    disp('System (ii) is not linear with larger set of values')
end

% Test for Time-Invariance with larger set (ii)
x5 = [0, 0, x1];
y5 = 2*x5 + [5, zeros(1, length(x5)-1)];


y6 = [0, 0, y1];  

if all(y5 == y6)
    disp('System (ii) is time-invariant with larger set of values')
else
    disp('System (ii) is not time-invariant with larger set of values')
end
