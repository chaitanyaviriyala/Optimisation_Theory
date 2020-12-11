function [f,g,H,J] = capteur(x)
%
% x : valeur de la variable d'optimisation
% params : structure contenant les param?tres de la fonction objectif
% f,g,H,J : fonction objectif, gradient, hessien et Jacobien
%
% 
    function sse = sseval(x,tdata,ydata)
    A = x(1);
    lambda = x(2);
    sse = sum((ydata - A*exp(-lambda*tdata)).^2);
    A = bestx(1);
    lambda = bestx(2);
    yfit = A*exp(-lambda*tdata);
    plot(tdata,ydata,'*');
    hold on
    plot(tdata,yfit,'r');
    xlabel('tdata')
    ylabel('Response Data and Curve')
    title('Data and Best Fitting Exponential Curve')
    legend('Data','Fitted Curve')
    hold off

end 
