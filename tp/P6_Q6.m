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

Q=30;
h = fir1(Q,2*[vc1 vc2]);

v = linspace(0,0.5,1000);
w = 2*pi*v;
H1 = freqz(B,A,w);
H2 = freqz(h,1,w);
Hp1 = angle(H1);
Hp1 = unwrap(Hp1);
Hp2 = angle(H2);
Hp2 = unwrap(Hp2);

figure
plot(v,Hp1)
grid

xlabel('Frequence normalisee')
ylabel('Radian')
title('Courbe de phase du filtre de RII')

figure
plot(v,Hp2)
grid

xlabel('Frequence normalisee')
ylabel('Radian')
title('Courbe de phase du filtre de RII')