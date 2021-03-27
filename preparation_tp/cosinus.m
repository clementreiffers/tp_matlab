function[x4]=cosinus(N,A,v0,phi)
x4=linspace(0,N-1,10000); % on repartie equitablement 1000 valeurs entre 0 et N-1
% affichage de la fonction :
% pour toutes les valeurs de x4, on calcule la valeur de la fonction et on
% le place sur le graphique
plot(x4,A*cos(2*pi*v0*x4+phi));  
grid on; % on affiche les grilles
% on affiche les legendes
xlabel('Temps en seconde');
ylabel('Amplitude');
title('Cosinus');
end

