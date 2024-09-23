clear all
close all

% Parametres
r = 0.5; % Taux d'infection
a = 1/14; % Taux de retablissement
I0 = 0.5; % Proportion initial d'infectes
S0 = 1 - I0; % Proportion initial d'individus sains
T = 30; % Periode de 30 jours
dt = 1/4; % Intervalle de temps de 6 heures (1/4 de jour)

fprintf('R0 = %.2f\n',r*S0/a)

% Calcul du modele
[S,I,R] = sir(r,a,S0,I0,T,dt);

% Discretisation en temps
tt = 0:dt:T;

figure(1)

% Courbe
plot(tt,S,'b',"LineWidth",1.25,tt,I,'r',"LineWidth",1.25,tt,R,'g',"LineWidth",1.25); 
grid on;
xlabel('Jours', 'Fontsize', 20); ylabel("Nombre d'individus", 'Fontsize', 20);
legend('S','I','R','Fontsize', 20);

str = sprintf('r = %.2f, a = %.2f, S0 = %.2f, I0 = %.2f', r, a, S0, I0);
title(str, 'Fontsize', 20);
