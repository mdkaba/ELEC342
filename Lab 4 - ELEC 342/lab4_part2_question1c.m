% Mamadou Kaba 27070179
% Part 2 Question 1 c)
clc; clear; close all;

Fs = 1800; 
t = 0:1/Fs:1; 


x = sin(100*t) + sin(2000*t) + sin(6000*t);

% Normalized cutoff frequencies for bandpass filter 
Wn = [1900 2100]/(Fs*pi); 

% Fourth-order Elliptic filter with 1 dB passband ripple and 60 dB stopband attenuation
[b4, a4] = ellip(4, 1, 60, Wn, 'bandpass');
x_filt4 = filter(b4, a4, x);

% Eighth-order Elliptic filter with 1 dB passband ripple and 60 dB stopband attenuation
[b8, a8] = ellip(8, 1, 60, Wn, 'bandpass');
x_filt8 = filter(b8, a8, x);

% Plot the input signal
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for fourth-order Elliptic filter
subplot(3,1,2);
g4 = tf(b4, a4);
bode(g4);
title('Bode Plot of Fourth-Order Elliptic Filter');

% Output signal of the fourth-order Elliptic filter
subplot(3,1,3);
plot(t, x_filt4);
title('Output Signal of Fourth-Order Elliptic Filter');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the input signal again for eighth-order Elliptic filter
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for eighth-order Elliptic filter
subplot(3,1,2);
g8 = tf(b8, a8);
bode(g8);
title('Bode Plot of Eighth-Order Elliptic Filter');

% Output signal of the eighth-order Elliptic filter
subplot(3,1,3);
plot(t, x_filt8);
title('Output Signal of Eighth-Order Elliptic Filter');
xlabel('Time (s)');
ylabel('Amplitude');
