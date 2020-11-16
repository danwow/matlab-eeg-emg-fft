%--------------------------------------------------------------------------
% Function name....: eegread
% Date.............: Julho, 2019
% Description......:
%                    eegread retorna a diferença das potências das bandas
%                    teta e beta de acordo com a transformada rápida de
%                    Fourier
%
% Parameters.......: 
%                    raw_signal: a Nx1 matrix that corresponds to the
%                    signal to be analyzed.
%
% Return...........:
%                    freq: A vector containing the frequencies
%                    pow: A vector containing the power estimates
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function [dif] = eegread(sinal,sampf)
 l = fft(sinal);
 l = length(raw_signal);
 nfft = 2^nextpow2(l);
 Y = fft(raw_signal,nfft)/l;
 freq = sampf/2*linspace(0,1,nfft/2+1);
 pow = 2*abs(Y(1:nfft/2+1));
 teta = mean(pow(:,
 dif = alfa - teta;
