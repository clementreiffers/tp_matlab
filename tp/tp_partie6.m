load signal04;
fe=250;

% representation temporelle (question 1)
N = length(x);
n = 0:(N-1);
hold on
plot(n,x)
grid
xlabel('Indice')
ylabel('Amplitude')
title('Représentation temporelle')

% representation frequentielle
X = fft(x);
Xm = abs(X);
N = length(x);
n = 0:(N-1);
v = n/N;
plot(v,Xm)
grid
xlabel('Fréquence normalisée')
ylabel('Amplitude')
title('Module du spectre')