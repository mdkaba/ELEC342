% Mamadou Kaba 27070179
% Part 2 Question 2
clc; clear; close all;

% Sampling frequency and time vector
Fs = 8192;
t = 0:1/Fs:3;

% Create the signal
signal = sin(2*pi*200*t).*(t >= 0 & t < 3) + sin(2*pi*330*t).*(t >= 1 & t < 3) + sin(2*pi*480*t).*(t >= 2 & t < 3);

% Plot the time domain signal
figure;
subplot(2,1,1);
plot(t, signal);
title('Time Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the FFT of the signal
L = length(signal);
Y = fft(signal);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L; 

% Plot the frequency domain signal
subplot(2,1,2);
plot(f, P1);
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Design a bandstop filter to remove the 330 Hz component
Wn = [325 335]/(Fs/2); % Normalized cutoff frequency for bandstop filter
[b, a] = butter(4, Wn, 'stop'); % Fourth-order Butterworth bandstop filter

% Plot the filter response
figure;
freqz(b, a, 2048, Fs);
title('Bandstop Filter Designed to Remove 330 Hz Component');

% Filter the signal
filtered_signal = filter(b, a, signal);

% Plot the original and filtered signals in time domain
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute the FFT of the filtered signal
Y_filtered = fft(filtered_signal);
P2_filtered = abs(Y_filtered/L);
P1_filtered = P2_filtered(1:L/2+1);
P1_filtered(2:end-1) = 2*P1_filtered(2:end-1);

% Plot the frequency domain of the original and filtered signals
figure;
subplot(2,1,1);
plot(f, P1);
title('FFT of Original Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(2,1,2);
plot(f, P1_filtered);
title('FFT of Filtered Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');


soundsc(signal, Fs);
pause(4);
soundsc(filtered_signal, Fs);
