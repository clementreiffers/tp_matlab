function[x3]=porte(N,theta)
x3 = ones(N, 1); % on cree une matrice de longueur N avec que des 1
x3(theta:N)=0; % pour toutes les valeurs de theta à N, on affecte 0
plot(x3); % on affiche x3
grid on; % on affiche les grilles
% on applique les legendes
title("fonction porte");
xlabel("Temps en seconde");
ylabel("Amplitude");
end

