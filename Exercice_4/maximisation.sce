// Cette fonction retourne la valeur de -f(x) (il est impossible de trouver le maximum de f avec fminsearch par contre on peut trouver le minimum de la fonction multipliee par -1) pour un x donne.
function y = f1(x)
    // Retournons la valeur de -(f(x))
    y = -((x^3 + x^2 - 2)/(2*x^4 + 3))
endfunction

// Initialisation de la valeur de x
x0 = 1

// Recuperons le maximum de la fonction ainsi que la valeur de l'objectif multiplie par -1
[x, fval] = fminsearch(f1, x0)

// Definissons la vraie valeur de l'objectif en multipliant sa valeur par -1
fval = -fval

// Affichage des resultats dans la console
disp('Le maximum est de '+string(x)+' et la valeur de l''objectif au maximum est de '+string(fval))
