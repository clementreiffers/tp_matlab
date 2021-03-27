% la fonction zeros(N, M) => matrice N * M remplie de 0
% x=[0,0,0,0]' => on cree une matrice 1*4 et on fait sa transposée 
% clc : nettoyer le terminal
% clear : effacer toutes les variables
% x1(1) = 1 : le premier element de x1 sera egal à 1
% figure : creer une figure
% x=[1,2,3;2,5,6] : matrice de dimension 2, ca cree une matrice de 2 lignes
% et 2 colonnes
% x=[1:5] : faire un vecteur d'une ligne qui va de 1 à 5
% y=[1:5];x=[1:5]; plot(x, y); : afficher y = f(x) dans une figure
% grid : afficher le grillage
% legend("") : nommer une courbe
% hold on : pour ne pas fermer certaines courbes
% close all : fermer toutes les courbes

% 3 ESTIMATION DE LA FREQUENCE D'UNE NOTE DE MUSIQUE
% on est groupe 4 donc on prend la note 4 (question 1)
load note04;
fe=44100; 
% sound(x, fe) % le son change en fonction de la frequence d'echantillonage

% representation temporel de notre signal (question 2)
N=length(x);
t=(0:N-1)/fe;
xlabel("temps en seconde");
ylabel("Amplitude");
title("representation temporelle de notre signal");
plot(t,x);
grid on;

% representation frequentielle de notre signal (question3)
X = fft(x); % transformee de fourier (fast fourier transform)
Xm = abs(X);
N = length(x);
n = 0:(N-1);
v = n/N;
f = v*fe;
plot(f,Xm)
grid
xlabel('Fréquence en Hertz')
ylabel('Amplitude')
title('Module du spectre')

% ESTIMATION D'UN NUMERO DE TELEPHONE
% on ecoute (question 1)
load numero04;
fe=8000;
% sound(x,fe);

% representation temporelle (question 2)
N=length(x);
t=(0:N-1)/fe;
xlabel("temps en seconde");
ylabel("Amplitude");
title("representation temporelle de notre signal");
plot(t,x);
grid on;

% representation frequentielle (question 3)
X = fft(x); % transformee de fourier (fast fourier transform)
Xm = abs(X);
N = length(x);
n = 0:(N-1);
v = n/N;
f = v*fe;
plot(f,Xm)
grid
xlabel('Fréquence en Hertz')
ylabel('Amplitude')
title('Module du spectre')

% representation temps-frequence (question 4)
N = length(x); %nbr points signal
Tt=40e-3; % dure sec d'une tranche
Nppt=floor(Tt*fe); % nb pts par tranche
Nt=floor(N/Nppt); % nb tranches
N=Nt*Nppt; % nbr pts pts signal arrondi
x=x(1:N); % troncature du signal
X=[];
for k=1:Nt
    xt=x((k-1)*Nppt+1:k*Nppt); % tranche du signal de npp pts
    z(:,k)=abs(fft(xt)); % module du spectre de la tranche
end
t=(0:Nt-1)*Tt; % echelle de temps
f=(0:Nppt-1)/Nppt*fe; % echelle de frequence
imagesc(t,f,z)
grid
axis xy
xlabel('Temps en seconde')
ylabel('Fréquence en Hertz')
title('Image temps-fréquence')

