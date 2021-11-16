// Initialisation de la variable alpha 
alpha = 2.5

// Initialisation de la variable beta 
bet = 2/3

// Initialisation de la variable x
x0 = 100

// le temps varient de 0 à 5 par pas de 0.1
t = [0:0.1:5]

// Recuperons le temps initial
t0 = min(t)

// Initialisation de la variable y pour la premiere simulation
y0 = 100

// Recuperons le resultat de la premiere simulation à l'aide de la fonction ode
dX_1 = ode([x0; y0], t0, t, list(deriveX, alpha, bet))

// Initialisation de la variable y pour la deuxieme experience
y0 = 50

// Recuperons le resultat de la premiere simulation à l'aide de la variable ode
dX_2 = ode([x0; y0], t0, t, list(deriveX, alpha, bet))

// Pour le premier graphique
subplot(1, 2, 1)

// Tracons les evolutions de ces deux variables dans un graphique
plot(t, dX_1(1,:), t, dX_1(2,:))
a = gca()
f = gcf()

// Nom de la figure
f.figure_name = 'Graphique d''evolutions de la competion Lievres VS Lynx'

// Titre de l'axe des abscisses
xlabel('Temps')

// Titre de l'axe des ordonnees
ylabel('Evolutions')

// Titre de la figure
title("Lievres VS Lynx : Avec y0 = 100")

// taille des ecritures
a.x_label.font_size = 3
a.y_label.font_size = 3
a.title.font_size = 4

// Ajout de la legende
h1 = legend(['Lievres', 'Lynx'])

// Pour le deuxieme graphique
subplot(1, 2, 2)

// Tracons les evolutions de ces deux variables dans un graphique
plot(t, dX_2(1,:), t, dX_2(2,:))
a = gca()
f = gcf()

// Nom de la figure
f.figure_name = 'Graphique d''evolutions de la competion Lievres VS Lynx'

// Titre de l'axe des abscisses
xlabel('Temps')

// Titre de l'axe des ordonnees
ylabel('Evolutions')

// Titre de la figure
title("Lievres VS Lynx : Avec y0 = 50")

// taille des ecritures
a.x_label.font_size = 3
a.y_label.font_size = 3
a.title.font_size = 4

// Ajout de la legende
h1 = legend(['Lievres', 'Lynx'])

disp('Dans la premiere simulation on commence avec les memes densites de lievres et lynx et on remarque que la densite de lievres decroit plus vite et retombe un chiffre presque nul !! Dans la deuxieme simulation c''est le contraire, la densite de lynx chute plus vite !! Cela veut peut-etre dire que moins il y a lynx au debut plus les lievres ont une chance de gagner la competition !!')
