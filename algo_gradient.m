clear all, close all
clc,

% Algorithme du gradient
% déclaration de la fonction

x1 = -50:0.1:50;
x2 = -50:0.1:50;

f = @(x1,x2) x1.^2-x1+x1.*x2-x2+x2.^2 ;

% rappel le gradient est la dérivé de la fonction donc ici pour x1 et pour
% x2 (les x(1) et x(2) serviront à choisi les valeurs dans théta après
gradf = @(x) [2*x(1) - 1 + x(2);
              x(1) - 1 + 2*x(2)];

% paramètres de l'algorithme du gradient
theta = [25;-15];
lamda_p= 0.1;
max_iter = 100;
Theta_vector = theta;
Theta_vector(:,1) = theta;

%descente du gradient
for k = 1:max_iter
    theta= theta - lamda_p * gradf(theta);
    Theta_vector(:,k+1) = theta;
end

[X, Y] = meshgrid(x1, x2);   % génération de la grille
Z = f(X, Y);      % évaluation point par point

%affichage des résultats
figure;
subplot(1,2,1)
surf(X, Y, Z);
shading interp  
colormap(jet)  
xlabel('x1');
ylabel('x2');
zlabel('Z')
title('plot de surface de f(x1,x2)');

subplot(1,2,2)
contour(X,Y,Z,30)

hold on;
plot(Theta_vector(1,:), Theta_vector(2,:), 'r.-', 'LineWidth', 2, 'MarkerSize', 15);

xlabel('x1')
ylabel('x2')
title('Courbes de niveau et descente de gradient');
grid on;

disp(theta)
