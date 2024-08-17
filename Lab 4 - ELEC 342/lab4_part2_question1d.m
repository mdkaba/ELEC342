% Mamadou Kaba 27070179
% Part 2 Question 1 d)
clc; clear; close all;

Fs = 1800; % Sampling frequency
t = 0:1/Fs:1; % Time vector

% Input signal
x = sin(100*t) + sin(2000*t) + sin(6000*t);

% Normalized cutoff frequencies for bandpass filter (adjusted for lower frequencies)
Wn = [1900 2100]/(Fs*pi); % To capture the 2000 Hz component

% Eighth-order Butterworth filter
[b_butter, a_butter] = butter(8, Wn, 'bandpass');
x_filt_butter = filter(b_butter, a_butter, x);

% Eighth-order Chebyshev Type I filter with 1 dB passband ripple
[b_cheby1, a_cheby1] = cheby1(8, 1, Wn, 'bandpass');
x_filt_cheby1 = filter(b_cheby1, a_cheby1, x);

% Eighth-order Elliptic filter with 1 dB passband ripple and 60 dB stopband attenuation
[b_ellip, a_ellip] = ellip(8, 1, 60, Wn, 'bandpass');
x_filt_ellip = filter(b_ellip, a_ellip, x);

% Compute the FFT of the input and filtered signals
X = fft(x);
X_filt_butter = fft(x_filt_butter);
X_filt_cheby1 = fft(x_filt_cheby1);
X_filt_ellip = fft(x_filt_ellip);

% Frequency vector
f = (0:length(X)-1)*Fs/length(X);

% Plot the FFT of the input signal and filtered signals
figure;
subplot(4,1,1);
plot(f, abs(X));
title('FFT of Input Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(4,1,2);
plot(f, abs(X_filt_butter));
title('FFT of Output Signal (Butterworth)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(4,1,3);
plot(f, abs(X_filt_cheby1));
title('FFT of Output Signal (Chebyshev Type I)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(4,1,4);
plot(f, abs(X_filt_ellip));
title('FFT of Output Signal (Elliptic)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
