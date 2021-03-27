load signal04
sound(x)

v0 = 0.1;

vc1=0.9*v0;
vc2=1.1*v0;
vatt1=0.75*v0;
vatt2=1.25*v0;
a=3;
b=20;
[N,wn] = buttord(2*[vc1 vc2],2*[vatt1 vatt2],a,b);
[B,A] = butter(N,wn);

y = filter(B,A,x);
N = length(y);
n=0:N-1;
figure
plot(n,y)
grid
xlabel('indice')
ylabel('Amplitude')
title('Sinusioide debruitee par filtrage')

N = length(y);
v = (0:N-1)/N;

figure
plot(v,abs(fft(y)))
grid
xlabel('Frequence reduite')
ylabel('Amplitude')
title('Spectre de la sinusoide debruite par filtrage RII')