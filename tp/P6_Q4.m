load signal04
sound(x)

v0 = 0.1;

vc1=0.9*v0;
vc2=1.1*v0;

Q=30;

h = fir1(Q,2*[vc1 vc2]);
v = linspace(0,0.5,1000);
w = 2*pi*v;
H = freqz(h,1,w);
Hm = abs(H);

Hm = 20*log10(Hm);
figure
plot(v,Hm)
grid
xlabel('frequence normalise')
ylabel('db')
title('Courbe de gain du filtre RIF')