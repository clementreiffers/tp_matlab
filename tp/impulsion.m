function x1= impulsion(N)
x1=zeros(N, 1);
x1(1)=1;
n=0:N-1;
figure
stem(n, x1);
grid
xlabel("Indice");
ylabel("Amplitude");
title("impulsion de dirac");
% pas de end car on n'est pas dans le programme principal
