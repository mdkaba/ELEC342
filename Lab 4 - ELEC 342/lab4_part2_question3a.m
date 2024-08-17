% Mamadou Kaba 27070179
% Part 2 Question 3 a)

% Load the original and downsampled signals from the workspace
original_audio = out.original_audio;
audio_down_sampled_8 = out.audio_down_sampled_8;
audio_down_sampled_16 = out.audio_down_sampled_16;

% Convert timeseries to double and reshape to 1D array
original_audio = double(original_audio.Data(:));
audio_down_sampled_8 = double(audio_down_sampled_8.Data(:));
audio_down_sampled_16 = double(audio_down_sampled_16.Data(:));

% Define sampling frequency
Fs = 44100;

% Time vector for plotting (first second)
t = (0:Fs-1) / Fs;

% Plot the original signal in time domain
figure;
subplot(6,1,1);
plot(t, original_audio(1:Fs));
title('Original Audio Signal (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute and plot FFT of the original signal
L = length(original_audio);
f = (-L/2:L/2-1)/L;
Y_orig = fftshift(fft(original_audio));

subplot(6,1,2);
plot(f, abs(Y_orig)/max(abs(Y_orig)));
title('FFT of Original Audio Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Adjust time vector for the downsampled signal (k=8)
t_down_8 = (0:Fs/8-1) / (Fs/8);

% Plot the downsampled signal (k=8) in time domain
subplot(6,1,3);
plot(t_down_8, audio_down_sampled_8(1:Fs/8));
title('Downsampled Audio Signal (k=8) (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute and plot FFT of the downsampled signal (k=8)
L_down_8 = length(audio_down_sampled_8);
f_down_8 = (-L_down_8/2:L_down_8/2-1)/L_down_8;
Y_down_8 = fftshift(fft(audio_down_sampled_8));

subplot(6,1,4);
plot(f_down_8, abs(Y_down_8)/max(abs(Y_down_8)));
title('FFT of Downsampled Audio Signal (k=8)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Adjust time vector for the downsampled signal (k=16)
t_down_16 = (0:Fs/16-1) / (Fs/16);

% Plot the downsampled signal (k=16) in time domain
subplot(6,1,5);
plot(t_down_16, audio_down_sampled_16(1:Fs/16));
title('Downsampled Audio Signal (k=16) (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute and plot FFT of the downsampled signal (k=16)
L_down_16 = length(audio_down_sampled_16);
f_down_16 = (-L_down_16/2:L_down_16/2-1)/L_down_16;
Y_down_16 = fftshift(fft(audio_down_sampled_16));

subplot(6,1,6);
plot(f_down_16, abs(Y_down_16)/max(abs(Y_down_16)));
title('FFT of Downsampled Audio Signal (k=16)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
