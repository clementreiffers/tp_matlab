% fonction pour creer un echelon d'Heaviside
function[x2]=echelon(N)
x2=zeros(N,1); % on cree une matrice de zeros 100 *1
% le but de cette boucle for est de faire demarrer notre boucle à notre
% instant N voulu
for k=N:length(x2) % on fait une boucle qui va de N à la longueur de x2
    x2(k)=1; % on affecte la valeur 1 à toutes les valeurs de la matrice x2    
end
% affichage du graphique
% on affiche x2 pour les valeurs allant de 0 à la longueur de x2-1
plot(x2); 
xlabel('Temps en seconde');
ylabel('Amplitude');
title('Echelon');

end

