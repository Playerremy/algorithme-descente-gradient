# Descente de gradient en MATLAB

Ce projet présente une implémentation simple de l'algorithme de descente de gradient pour minimiser une fonction quadratique de deux variables.

## Fonction étudiée

La fonction utilisée est :

$$
f(x_1,x_2) = x_1^2 - x_1 + x_1x_2 - x_2 + x_2^2
$$

Son gradient vaut :

$$
\nabla f(x_1,x_2) =
\begin{bmatrix}
2x_1 + x_2 - 1 \\
 x_1 + 2x_2 - 1
\end{bmatrix}
$$

Le minimum est obtenu lorsque le gradient est nul. En résolvant le système associé, on trouve :

$$
(x_1^*,x_2^*) = \left(\frac{1}{3},\frac{1}{3}\right)
$$

## Algorithme

La descente de gradient met à jour le vecteur `theta` selon la relation :

$$
\theta_{k+1} = \theta_k - \lambda\nabla f(\theta_k)
$$

avec :

- point initial : `theta = [25; -15]` ;
- pas d'apprentissage : `lambda = 0.1` ;
- nombre d'itérations : `100`.

Les positions successives sont stockées dans `Theta_vector` afin de pouvoir afficher le chemin suivi par l'algorithme.

## Contenu du projet

- `algo_gradient.m` : script MATLAB réalisant l'optimisation et les graphiques.
- `README.md` : documentation du projet.

## Prérequis

Le script peut être exécuté avec :

- MATLAB ;
- GNU Octave, avec le support des fonctions graphiques.

## Exécution

1. Ouvrir MATLAB ou Octave.
2. Se placer dans le dossier du projet.
3. Exécuter le script :

```matlab
algo_gradient
```

Le script affiche ensuite la valeur finale de `theta` dans la console.

## Résultats graphiques

Deux graphiques sont générés :

1. une représentation 3D de la surface de la fonction ;
2. les courbes de niveau avec le chemin suivi par la descente de gradient.

La valeur finale de `theta` doit être proche de :

```text
0.3333
0.3333
```

Le point atteint correspond au minimum de la fonction.

## Paramètres modifiables

Les paramètres suivants peuvent être adaptés dans `algo_gradient.m` :

```matlab
theta = [25; -15];
lambda_p = 0.1;
max_iter = 100;
```

- Modifier `theta` change le point de départ.
- Modifier `lambda_p` change la taille des déplacements.
- Modifier `max_iter` change le nombre d'itérations.

Un pas trop grand peut empêcher la convergence, tandis qu'un pas trop petit ralentit l'algorithme.

## Objectif pédagogique

Ce projet permet d'illustrer :

- le calcul d'un gradient ;
- la minimisation numérique d'une fonction ;
- l'influence du pas d'apprentissage ;
- la visualisation de la convergence d'un algorithme d'optimisation.
