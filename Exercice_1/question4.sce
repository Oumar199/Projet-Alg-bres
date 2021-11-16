// Initialisation de la variable alpha 
alpha = 0.5

// Initialisation de la variable beta 
bet = 2/3

// Initialisation de la variable x
x0 = 100

// Initialisation de la variable y pour la premiere simulation
y0 = 100

// Mettons dans un vecteur colonne les variables X0 et y0
X0 = [x0; y0]

// le temps varient de 0 à 5 par pas de 0.1
t = [0:0.1:5]

// Recuperons le temps initial
t0 = min(t)

// Recuperons le resultat de la premiere simulation à l'aide de la fonction ode
dX = ode(X0, t0, t, list(deriveX, alpha, bet))

// Tracons les evolutions de ces deux variables dans un graphique
plot(t, dX(1,:), t, dX(2,:))
a = gca()
f = gcf()

// Nom de la figure
f.figure_name = 'Graphique d''evolutions de la competion Lievres VS Lynx'

// Titre de l'axe des abscisses
xlabel('Temps')

// Titre de l'axe des ordonnees
ylabel('Evolutions')

// Titre de la figure
title("Lievres VS Lynx")

// taille des ecritures
a.x_label.font_size = 3
a.y_label.font_size = 3
a.title.font_size = 4

// Ajout de la legende
h1 = legend(['Lievres', 'Lynx'])


disp('La densite de lynx cette fois ci decroit plus vite que celle de lievres et retombe presque a une valeur nulle !! Les lievres gagnent dans cette competition !!')
