fa = 1024;
dt = 1/fa;
t = 0:dt:6;
sinal = 2*sin(2*pi*30*t);
yFFT = IB_fft(sinal);
xFFT = IB_fftx(sinal,fa);
subplot(2,1,1);
plot(t,sinal);
subplot(2,1,2);
plot(xFFT,yFFT);

    