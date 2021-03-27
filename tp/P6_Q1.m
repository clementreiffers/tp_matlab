load signal04
% fe=44100;
sound(x)

N = length(x);
n = 0:(N-1);

figure
plot(n,x)
grid

xlabel('Temps en secondes')
ylabel('Amplitude')
title('Representation temporelle')



X = fft(x);
Xm = abs(X);

% N = length(x);
% n = 0:(N-1);
v = n / N;

figure
plot(v,Xm)
grid

xlabel('Frequence normalise')
ylabel('Amplitude')
title('Representation Frequencielle')
