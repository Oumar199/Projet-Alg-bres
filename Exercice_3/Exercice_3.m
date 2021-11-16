function [Y_2020, Z_2025, X_2019, W_2018] = Exercice_3()

% Initialisation de la matrice de projection des tailles demographiques
A = [0.3 0 0.6; 0.2 0.4 0.3; 0 0.5 0.2];

% Initialisation du vecteur (X) contenant les tailles des trois populations
% en 2019
X = [6; 5; 4];

% Pour trouver les tailles des populations en 2020 il suffit de projeter
% les tailles des populations de 2019 vers 2020 à l'aide de l'equation
% Y = A*X avec Y le vecteur contenant les tailles des populations en 2020
Y = A*X;

% Pour trouver les tailles des populations en 2025 il suffit de projeter 
% les tailles des populations de 2020 vers 2025 en résolvant cinq fois de
% suite l'equation Z = A*Y avec Z le vecteur contenant les tailles des
% populations suivant les projections successives
% Initialisons Z en lui affectant le vecteur Y
Z = Y;

for i = 1:5
    
    Z = A*Z;
    
end

% Enregistrons les tailles calculées dans la premiere partie de l'exercice
Y_2020 = Y;
Z_2025 = Z;

% affectons a Y les nouvelles tailles des populations en 2020 pour la 
% resolution de la deuxieme partie de l'exercice
Y = [4.2; 4.4; 3.3];

% Pour trouver les tailles des populations en 2019 il suffit de projeter
% cette fois les tailles des populations de 2020 vers 2019 en resolvant la
% nouvelle equation X = inv(A)*Y (Notons que det(A), le determinant de A
% n'est pas nul)
X = inv(A)*Y;

% Pour trouver les tailles des populations en 2018 il suffit de projeter
% les tailles de populations de 2019 vers 2018 en résolvant 
% l'équation W = inv(A)*X car X = A*W avec W le vecteur contenant les
% tailles des populations en 2018 
W = inv(A)*X;

% Enregistrons les tailles calculées dans la deuxieme partie de l'exercice
X_2019 = X;
W_2018 = W;

% Affichons les reponses apportées a la deuxieme partie 
disp('Pour la question 3.a nous remarquons que les tailles des populations en 2019 apres initialisation de Y a [4.2; 4.4; 3.3] restent les memes car c''est les memes valeurs qu''on a reussi a calculer dans la premiere question. Donc on peut dire que le modele de dynamique de populations fonctionne meme en sens inverse. On remarque aussi que les tailles des populations ont chute en 2020 par rapport a celles de 2019.')
disp('Pour la question 3.b nous remarquons que les tailles des deux premieres populations sont inferieures a celles de 2019 mais pas pour la taille de la troisieme population qui, pour elle, est beaucoup plus importante !! Donc on peut dire que la croissance des deux premieres populations avait repris son cours lors de l''annee 2019 avant de commencer a baisse contrairement a la taille de la troisieme population qui, pour elle, etait importante en 2018 puis decroit continuellement')

end