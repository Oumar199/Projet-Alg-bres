// Cette fonction permet de retourner les calculs effectues suivants 
// les formules des equations differentielles
function dX = deriveX(t, X, alpha, bet)
    
// affectation à la variable x de sa valeur
x = X(1)

// affectation à la variable y de sa valeur
y = X(2)

// definitions, dans un vecteur colonne, des deux equations differentielles
// r1, r2, K1 et K2 ne varient pas
r1 = 0.03
K1 = 10
r2 = 0.02
K2 = 5
dX = [r1*x*((K1 - x - alpha*y)/K1); r2*x*((K2 - x - bet*y)/K2)]

end

