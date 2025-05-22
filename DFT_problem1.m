%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Date: 08.05.2025                                               %
%      Author: Thilakraj Soundararajan                                %
%      Description:                                                   %
%      Implementation of Discrete Fourier Transform (DFT)             %
%      using vectorized operations (MyDFT2), compared against         %
%      MATLAB's built-in fft function. Includes profiling and timing. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input signal vector
y = 1:4;  % Example input signal

disp('Profiling MyDFT2...');
profile on  % Start MATLAB profiler to analyze performance
Z = MyDFT2(y);  % Compute DFT using vectorized custom function
X_fft = fft(y);  % Compute DFT using MATLAB's built-in FFT function
profile viewer  % View profiler results

% Timing execution of MyDFT2
disp('Timing MyDFT2...');
tic; MyDFT2(y); toc

% Timing execution of MATLAB fft
disp('Timing fft...');
tic; fft(y); toc

% Display computed DFT values from custom and built-in functions
disp('Values from MyDFT2:');
disp(MyDFT2(y));
disp('Values from fft:');
disp(fft(y));

% Vectorized implementation of Discrete Fourier Transform (DFT)
function Z = MyDFT2(y)
    N = length(y);           % Length of input signal
    n = 0:N-1;              % Time indices (row vector)
    k = n';                 % Frequency indices (column vector)
    % Create the matrix of exponent factors for DFT calculation
    exponentMatrix = exp(-1j * 2 * pi * (k * n) / N);  
    % Multiply the input signal (as column vector) by exponent matrix element-wise
    yMatrix = y.';          % Convert input vector to column vector for matrix multiplication
    % Compute DFT by matrix multiplication (sum over time indices)
    Z = exponentMatrix * yMatrix;
end
