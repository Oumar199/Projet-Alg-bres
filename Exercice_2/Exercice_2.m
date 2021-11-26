function [Y_2020, Z_2024, W_2018] = Exercice_2()

% Initialisation de la matrice de projection des tailles demographiques
A = [0.4 0.1 0.3; 0.3 0.2 0.4; 0.2 0.4 0.3];

% Initialisation du vecteur (X) contenant les tailles des trois populations
% en 2019
X = [5; 10; 15];

% Pour trouver les tailles des populations en 2020 il suffit de projeter
% les tailles des populations de 2019 vers 2020 à l'aide de l'equation
% Y = A*X avec Y le vecteur contenant les tailles des populations en 2020
Y = A*X;

% Pour trouver les tailles des populations en 2024 il suffit de projeter 
% les tailles des populations de 2020 vers 2024 en résolvant quatre fois de
% suite l'equation Z = A*Y avec Z le vecteur contenant les tailles des
% populations suivant les projections successives
% Initialisons Z en lui affectant le vecteur Y
Z = Y;

for i = 1:4
    
    Z = A*Z;
    
end

% Pour trouver les tailles des populations en 2018 il suffit de projeter
% cette fois les tailles de populations de 2019 vers 2018 en résolvant 
% l'équation W = inv(A)*X car X = A*W avec W le vecteur contenant les
% tailles des populations en 2018 (Notons que det(A), le determinant de A
% n'est pas nul)
W = inv(A)*X;

% re-affectation des variables pour que ce soit plus explicite
Y_2020 = Y;
Z_2024 = Z;
W_2018 = W;

% Tracons un graphique pour pouvoir interpreter les resultats plus
% fiablement
% Recuperons d'abord les vecteurs contenant les evolutions des tailles des
% populations durant les annees pour chaque population
pop1 = [W(1,:), X(1,:), Y(1,:), Z(1,:)];
pop2 = [W(2,:), X(2,:), Y(2,:), Z(2,:)];
pop3 = [W(3,:), X(3,:), Y(3,:), Z(3,:)];

% initialisation du vecteur contenant les noms annees
annees = [2018, 2019, 2020, 2024];

% Tracons les graphiques
plot(annees, pop1, annees, pop2, annees, pop3)

% Ajout du titre
title('Evolutions des tailles des populations')

% Ajout des labels
xlabel('Annees')
ylabel('Taille de population (en milliers)')

% Ajout de la legende
legend('population1', 'population2', 'population3')

% Interpretons le graphique obtenu
disp('Pour la deuxieme population nous remarquons qu''en 2018 sa taille etait tres importante mais elle a radicalement diminuee en 2019 avant de decroitre legerement en 2020 et encore plus en 2024 !!')
disp('Pour la troisieme population nous remarquons qu''en 2018 sa taille est presque egale a la moitie de celle de la deuxieme population puis elle va croitre legerement en 2019 pour etre plus grande que celle de la deuxieme population et elle finir par diminuer en 2020 et 2024 de la meme maniere et au meme niveau que celle la deuxieme population !!')
disp('Pour la premiere population nous remarquons qu''en 2018 sa taille est drastiquement faible (voir meme qu''elle s''etait eteinte) puis elle va croitre rapidement en 2019 et en 2020 et elle va diminuer jusqu''a se rapprocher de la taille demographique des deux autres populations en 2024 !!') 
end