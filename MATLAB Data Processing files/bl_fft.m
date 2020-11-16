%--------------------------------------------------------------------------
% FEDERAL UNIVERSITY OF UBERLANDIA
% Faculty of Electrical Engineering
% Biomedical Engineering Lab
% Uberlândia, Brazil
% Developed by: Andrei Nakagawa, MSc
% Contact: andrei.ufu@gmail.com
%--------------------------------------------------------------------------
% This script is part of the EEG Processing Toolbox developed by
% the Biomedical Engineering Lab (Biolab/UFU)
% URL: http://www.biolab.eletrica.ufu.br/
% GitHub: https://github.com/BIOLAB-UFU-BRAZIL
%--------------------------------------------------------------------------
% Function name....: bl_fft
% Date.............: March, 2016
% Description......:
%                    bl_fft returns the frequencies and their power
%                    estimated according to Fast Fourier Transform
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
function [freq,pow] = bl_fft(raw_signal,sampf)
    l = length(raw_signal);
    nfft = 2^nextpow2(l);
    Y = fft(raw_signal,nfft)/l;
    freq = sampf/2*linspace(0,1,nfft/2+1);
    pow = 2*abs(Y(1:nfft/2+1));
end