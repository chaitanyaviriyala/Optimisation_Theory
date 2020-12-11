function [f,g,H] = rosenbrock(x)
% x : valeur de la variable d'optimisation
% params : structure contenant les parametres necessaires pour evaluer la fonction objectif
% f,g,h : valeur de la fonction objectif, son gradient et son hessien
    f = 2*(x(2)-x(1)^2)^2 + (1-x(1))^2;
    g(1) = - 8*(x(2)-x(1)^2)*x(1) - 2*(1-x(1)) ;
    g(2) = 4*(x(2)-x(1)^2);
    H(1,1) = 24*x(1)^2 + 8*x(2) + 2;
    H(1,2) = -8*x(1);
    H(2,1) = H(1,2);
    H(2,2) = 4;
end 