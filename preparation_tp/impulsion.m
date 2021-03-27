% fonction pour faire une impulsion de Dirac
function[x1]=impulsion(N) 
x1=zeros(N,1); % on cree une matrice N * 1 de Zeros
x1(N)=1; % on affecte l'impulsion de dirac à la valeur N demandée
% affichage du graphique :
% on affiche x1 pour les valeurs allant de 0 à la longueur de x1 -1
plot(x1);
xlabel('Temps en seconde'); % legende en abscisse
ylabel('Amplitude'); % legende en ordonnée
title('Impulsion de Dirac'); % titre du graphique
end
