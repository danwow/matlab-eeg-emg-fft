function [yFFT] = IB_fft(sinal)
l = length(sinal);
nfft = 2^nextpow2(l);
Y = fft(sinal,nfft)/l;
yFFT = 2*abs(Y(1:nfft/2+1));
end

