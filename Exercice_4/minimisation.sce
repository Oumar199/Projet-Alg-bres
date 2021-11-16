// Cette fonction retourne la valeur de f(x) pour un x donne.
function y = f2(x)
    // Retournons la valeur de f(x)
    y = sqrt(3*x^2 + x + 2)
endfunction

// Initialisation de la valeur de x
x0 = -1

// Recuperons le minimum de la fonction, que la valeur de l'objectif 
[x, fval] = fminsearch(f2, x0)

// Affichage des resultats dans la console
disp('Le minimum est de '+string(x)+' et la valeur de l''objectif au minimum est de'+string(fval))

