load note04
fe = 44100;
sound(x,fe)

N=length(x)
t=(0:N-1)/fe;
plot(t,x)
grid on
xlabel('Temps en seconde')
ylabel('Amplitude')
title('Note de guitare')

