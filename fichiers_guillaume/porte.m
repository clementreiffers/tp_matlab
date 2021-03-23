function[x3]=porte(N,theta)
x3=ones(100,1);
L=length(x3);
n=0:L-1;
for k=theta:N
    x3(k)=0;

plot(n,x3)
xlabel('Temps en seconde')
ylabel('Amplitude')
title('Porte')
end