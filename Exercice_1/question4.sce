
// Cette fonction permet de retourner les calculs effectués suivants 
// les formules des équations différentielles
function dX=deriveX(t, X, alpha, bet)
    
// affectation à la variable x de sa valeur
x = X(1)

// affectation à la variable y de sa valeur
y = X(2)

// définitions, dans un vecteur colonne, des deux équations différentielles
// r1, r2, K1 et K2 ne varient pas
r1 = 0.03
K1 = 10
r2 = 0.02
K2 = 5
dX = [r1*x*((K1 - x - alpha*y)/K1); r2*y*((K2 - y - bet*x)/K2)]

end

// Initialisation de la variable alpha 
alpha = 0.5

// Initialisation de la variable beta 
bet = 2/3

// Initialisation de la variable x
x0 = 100

// Initialisation de la variable y pour la première simulation
y0 = 100

// Mettons dans un vecteur colonne les variables X0 et y0
X0 = [x0; y0]

// le temps varie de 0 à 5 par pas de 0.1
t = [0:0.1:5]

// Récupérons le temps initial
t0 = min(t)

// Récupérons le résultat de la première simulation à l'aide de la fonction ode
dX = ode(X0, t0, t, list(deriveX, alpha, bet))

// Effaçons le graphique s'il y en a
clf

// Traçons les évolutions de ces deux variables dans un graphique
plot(t, dX(1,:), t, dX(2,:))
a = gca()
f = gcf()

// Nom de la figure
f.figure_name = 'Graphique d''évolutions de la compétition Lièvres VS Lynx'

// Titre de l'axe des abscisses
xlabel('Temps')

// Titre de l'axe des ordonnées
ylabel('Evolutions')

// Titre de la figure
title("Lièvres VS Lynx")

// taille des écritures
a.x_label.font_size = 3
a.y_label.font_size = 3
a.title.font_size = 4

// Ajout de la légende
h1 = legend(['Lièvres', 'Lynx'])

disp('La densité de lynx cette fois ci décroît plus vite que celle de lièvres et retombe à une valeur très faible !! Les lièvres gagnent dans cette compétition et les lynx tendent à disparaitre !!')


