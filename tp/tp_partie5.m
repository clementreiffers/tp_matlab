load ECG;
fe=250;

% representation temporelle (question 1)
N=length(x);
t=(0:N-1)/fe;
xlabel("temps en seconde");
ylabel("Amplitude");
title("representation temporelle de notre signal");
plot(t,x);
grid on;

% representation frequentielle (question 2)
X = fft(x); % transformee de fourier (fast fourier transform)
Xm = abs(X);
N = length(x);
n = 0:(N-1);
v = n/N;
f = v*fe;
plot(f,Xm)
grid
xlabel('Fréquence en Hertz')
ylabel('Amplitude')
title('Module du spectre')

% representation autocorrelation (question 3)
g = xcorr(x); % autocorrelation
N = length(x);
n = -(N-1):(N-1);
plot(n,g)
grid
xlabel('Indice')
ylabel('Amplitude')
title('Fonction d''autocorrélation')