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
% tailles des populations en 2018 (Notons que det(A) (le determinant de A)
% n'est pas nul
W = inv(A)*X;

% re-affectation des variables pour que ce soit plus explicite
Y_2020 = Y;
Z_2024 = Z;
W_2018 = W;

end