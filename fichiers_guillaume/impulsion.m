function[x1]=impulsion(N)
x1=zeros(1000,1);
L=length(x1);
n=0:L-1;
x1(N)=1;
plot(n,x1);
xlabel('Temps en seconde')
ylabel('Amplitude')
title('Impulsion de Dirac')
end
