load signal04
sound(x)


v0 = 0.1;

vc1=0.9*v0;
vc2=1.1*v0;

Q=30;
h = fir1(Q,2*[vc1 vc2]);
z = filter(h,1,x)

N = length(z);
n=0:N-1;
figure
plot(n,z)
grid
xlabel('indice')
ylabel('Amplitude')
title('Sinusioide debruitee par filtrage RIF')

N = length(z);
v = (0:N-1)/N;

figure
plot(v,abs(fft(z)))
grid
xlabel('Frequence reduite')
ylabel('Amplitude')
title('Spectre de la sinusoide debruite par filtrage RIF')