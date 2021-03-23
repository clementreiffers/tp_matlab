function[x2]=echelon(N)
x2=zeros(100,1);
L=length(x2);
n=0:L-1;
for k=N:100
    x2(k)=1;
    
plot(n,x2);
xlabel('Temps en seconde')
ylabel('Amplitude')
title('Echelon')

end