// Initialisation de la variable alpha
alpha = 0.5

// Initialisation de la variable beta
bet = 0.25

// Initialisation de la variable x
x0 = 100

// Initialisation de la variable y
y0 = 100

// Mettons dans un vecteur colonne les variables X0 et y0
X0 = [x0; y0]

// le temps varient de 0 à 5 par pas de 0.1
t = [0:0.1:5]

// Recuperons le temps initial
t0 = min(t)

// Recuperons le resultat de la simulation à l'aide de la fonction ode
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
h1 = legend(['$\text{\underline{Lievres} : }x\prime(t) = r_1*x(t)\frac{K1-x(t)-\alpha y(t)}{K1}$', '$\text{\underline{Lynx} : } y\prime(t) = r_2*y(t)\frac{K2-y(t)-\beta x(t)}{K2}$'])

disp('Nous remarquons que la densite de Lynx decroit plus vite que celle de Lapins ! Cependant la difference n''est pas tres grande ! Les lievres gagnent sur cette competion !')
