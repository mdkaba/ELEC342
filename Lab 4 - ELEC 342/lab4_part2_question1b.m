% Mamadou Kaba 27070179
% Part 2 Question 1 b)
clc; clear; close all;

Fs = 1800; 
t = 0:1/Fs:1; 


x = sin(100*t) + sin(2000*t) + sin(6000*t);


Wn = [1900 2100]/(Fs*pi); 

% Fourth-order Chebyshev Type I filter with 1 dB passband ripple
[b4, a4] = cheby1(4, 1, Wn, 'bandpass');
x_filt4 = filter(b4, a4, x);

% Eighth-order Chebyshev Type I filter with 1 dB passband ripple
[b8, a8] = cheby1(8, 1, Wn, 'bandpass');
x_filt8 = filter(b8, a8, x);

% Plot the input signal
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for fourth-order Chebyshev Type I filter
subplot(3,1,2);
g4 = tf(b4, a4);
bode(g4);
title('Bode Plot of Fourth-Order Chebyshev Type I Filter');

% Output signal of the fourth-order Chebyshev Type I filter
subplot(3,1,3);
plot(t, x_filt4);
title('Output Signal of Fourth-Order Chebyshev Type I Filter');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the input signal again for eighth-order Chebyshev Type I filter
figure;
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Bode plot for eighth-order Chebyshev Type I filter
subplot(3,1,2);
g8 = tf(b8, a8);
bode(g8);
title('Bode Plot of Eighth-Order Chebyshev Type I Filter');

% Output signal of the eighth-order Chebyshev Type I filter
subplot(3,1,3);
plot(t, x_filt8);
title('Output Signal of Eighth-Order Chebyshev Type I Filter');
xlabel('Time (s)');
ylabel('Amplitude');
