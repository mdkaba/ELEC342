% Mamadou Kaba 27070179
% Part 2 Question 1 a)
clc; clear; close all;

Fs = 1800; 
t = 0:1/Fs:1; 


x = sin(100*t) + sin(2000*t) + sin(6000*t);


Wn = [1900 2100]/(Fs*pi); 

% Fourth-order Butterworth filter
[b4, a4] = butter(4, Wn, 'bandpass');
x_filt4 = filter(b4, a4, x);

% Eighth-order Butterworth filter
[b8, a8] = butter(8, Wn, 'bandpass');
x_filt8 = filter(b8, a8, x);

% Plot the input signal
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for fourth-order Butterworth filter
subplot(3,1,2);
g4 = tf(b4, a4);
bode(g4);
title('Bode Plot of Fourth-Order Butterworth Filter');

% Output signal of the fourth-order Butterworth filter
subplot(3,1,3);
plot(t, x_filt4);
title('Output Signal of Fourth-Order Butterworth Filter');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the input signal again for eighth-order Butterworth filter
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for eighth-order Butterworth filter
subplot(3,1,2);
g8 = tf(b8, a8);
bode(g8);
title('Bode Plot of Eighth-Order Butterworth Filter');

% Output signal of the eighth-order Butterworth filter
subplot(3,1,3);
plot(t, x_filt8);
title('Output Signal of Eighth-Order Butterworth Filter');
xlabel('Time (s)');
ylabel('Amplitude');
