% Mamadou Kaba 27070179
% Part 2 Question 3 b)

% Load the original and upsampled signals from the workspace
original_audio = out.original_audio;
audio_up_sampled_8 = out.audio_up_sampled_8;
audio_up_sampled_16 = out.audio_up_sampled_16;

% Convert timeseries to double and reshape to 1D array
original_audio = double(original_audio.Data(:));
audio_up_sampled_8 = double(audio_up_sampled_8.Data(:));
audio_up_sampled_16 = double(audio_up_sampled_16.Data(:));

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

% Adjust time vector for the upsampled signal (L=8)
t_up_8 = (0:Fs*8-1) / (Fs*8);

% Plot the upsampled signal (L=8) in time domain
subplot(6,1,3);
plot(t_up_8, audio_up_sampled_8(1:Fs*8));
title('Upsampled Audio Signal (L=8) (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute and plot FFT of the upsampled signal (L=8)
L_up_8 = length(audio_up_sampled_8);
f_up_8 = (-L_up_8/2:L_up_8/2-1)/L_up_8;
Y_up_8 = fftshift(fft(audio_up_sampled_8));

subplot(6,1,4);
plot(f_up_8, abs(Y_up_8)/max(abs(Y_up_8)));
title('FFT of Upsampled Audio Signal (L=8)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Adjust time vector for the upsampled signal (L=16)
t_up_16 = (0:Fs*16-1) / (Fs*16);

% Plot the upsampled signal (L=16) in time domain
subplot(6,1,5);
plot(t_up_16, audio_up_sampled_16(1:Fs*16));
title('Upsampled Audio Signal (L=16) (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');

% Compute and plot FFT of the upsampled signal (L=16)
L_up_16 = length(audio_up_sampled_16);
f_up_16 = (-L_up_16/2:L_up_16/2-1)/L_up_16;
Y_up_16 = fftshift(fft(audio_up_sampled_16));

subplot(6,1,6);
plot(f_up_16, abs(Y_up_16)/max(abs(Y_up_16)));
title('FFT of Upsampled Audio Signal (L=16)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
