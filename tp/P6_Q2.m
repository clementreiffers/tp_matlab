load signal04

v0 = 0.1;

vc1=0.9*v0;
vc2=1.1*v0;
vatt1=0.75*v0;
vatt2=1.25*v0;
a=3;
b=20;
[N,wn] = buttord(2*[vc1 vc2],2*[vatt1 vatt2],a,b);
[B,A] = butter(N,wn);

v = linspace(0,0.5,1000);
w = 2*pi*v;
H = freqz(B,A,w);
Hm = abs(H);
Hm = 20*log10(Hm);
figure
plot(v,Hm)
grid
xlabel('Frequence Normalise')
ylabel('db')
title('Courbe de gain du filtre RII')