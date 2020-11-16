function [ xFFT ] = IB_fftx(sinal, freqAm)
l = length(sinal);
nfft = 2^nextpow2(l);
xFFT= freqAm/2*linspace(0,1,nfft/2+1);

end

