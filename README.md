# Discrete Fourier Transform (DFT) in MATLAB

## Overview
This project implements a custom Discrete Fourier Transform (DFT) function in MATLAB using vectorized operations ('MyDFT2') and compares its performance and results against MATLAB's built-in Fast Fourier Transform ('fft'). The implementation demonstrates the use of matrix multiplication to efficiently compute the DFT.

## Features
- Vectorized DFT implementation without explicit loops.
- Performance profiling and timing comparison with MATLAB's 'fft'.
- Clear and commented MATLAB code for educational purposes.

## Usage
1. Clone or download this repository.
2. Open the 'MyDFT2.m' file or the script containing the DFT implementation in MATLAB.
3. Run the script to:
   - Compute the DFT of a sample input vector.
   - Profile and compare execution times of 'MyDFT2' and 'fft'.
   - Display computed DFT results for both methods.

## Files
- 'MyDFT2.m' : MATLAB function file implementing the vectorized DFT.
- 'script.m' : Demonstrates usage, profiling, and timing.

## Example
```matlab
y = 1:4; % Sample input signal
Z = MyDFT2(y); % Compute DFT using custom function
X_fft = fft(y); % Compute DFT using built-in FFT
disp(Z);
disp(X_fft);

