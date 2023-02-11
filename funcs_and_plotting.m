% User Functions and plotting.

clear all;
close all;

%%
%% Functions
%% 

% Example: Create a custom function which creates a sinewave:

function [y, n, t] = makeSineFunc(f, Fs, N)
% Creating a sinewave at a certain frequency and sample rate.
% Inputs:
%   f: Frequency in Hz
%   Fs: Sample rate, in Hz
%   N: Number of samples
% Returns:
%   y: waveform samples
%   n: Sample index array
%   t: Time array
    Ts = 1/Fs;            % The sample period.
    n = 0:(N-1);           % Create the discrete time values.
    t = n * Ts
    y = sin((2.0*pi*f/Fs).*n);   % Creating a sampled sin waveform of frequency f1
end

Fs = 1e3;
N = 1000;
f1 = 4;
f2 = 8;
[y1, n, t] = makeSineFunc(f1, Fs, N);    % Capture each function output
y2 = makeSineFunc(f2, Fs, N);            % Only need the first output.

% Now plot both together, simple:
% plot arguments: (x1, y1, [opt formatting], x2, y2, [opt formatting], ...)
% Formatting can change linestyle and markerstyle using the shorthand:  '<color><marker><linestyle>'
% Examples:
% '.-'  -> solid line with a dot at each sample point. Defaults to blue linecolor.
% 'r'   -> solid red line
% 'r*-' -> solid red line with asterisk as markerstyle
% 'k--' -> black dashed line
% Color shorthand: 
% 'r' red
% 'g' green
% 'b' blue
% 'c' cyan
% 'm' magenta
% 'y' yellow
% 'k' black
figure;
plot(t, y1, '.-', t, y2, 'r--');
xlabel("Time (sec)")
ylabel("Output")
title("Overlayed sinewaves, using one plot() call");
grid on;
legend('y1', 'y2')

% Another way to overlay:

figure
plot(n, y1, '.-');
hold on;
plot(n, y2, 'r.-');
xlabel("sample index")
ylabel("Output")
grid on;
title("Overlayed sinewaves using 'hold on'");


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Subplots:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create multiple axes in a single figure:
% Example create 2 x 1 figure:
figure;

% Access the first plot index (i.e. the first row)
subplot(2, 1, 1)                      % 2 rows, 1 column, axes index
plot(n, y1, '.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y1 on first row");
grid on;

% Plot to the second plot index (i.e. the second row)
subplot(2, 1, 2)
plot(n, y2, 'r.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y2 on second row");
grid on;

figure;
subplot(2, 2, 1)
plot(n(1:10), y1(1:10), '.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y1 (subplot 1)");
grid on;

subplot(2, 2, 2)
plot(n(1:100), y1(1:100), '.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y1 (subplot 2)");
grid on;

subplot(2, 2, 3)
plot(n(1:200), y1(1:200), '.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y1 (subplot 3)");
grid on;

subplot(2, 2, 4)
h = plot(n(1:400), y1(1:400), '.-');
xlabel("sample index")
ylabel("Output")
title("Plot of y1 (subplot 4)");
grid on;

waitfor(h)         % Not necessary when running Matlab, I'm using Octave so this keeps the figures open.
