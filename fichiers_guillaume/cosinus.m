function[x4]=cosinus(N,A,v0,phi)
x4=linspace(0,N-1,10000);
plot(x4,A*cos(2*pi*v0*x4+phi))
grid on
xlabel('Temps en seconde')
ylabel('Amplitude')
title('Cosinus')
end