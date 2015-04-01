function xprime=newlagrange(th,x);
% lagrange's planetary equations, diff form
mu=132712440018;
F=1e-6;
xprime=[(2*F*(x(1)^3)*((1-(x(2)^2))^3))/(mu*(1+(x(2)*cos(th)))*((1-(x(2)^2))^2));((x(1)^2)*((1-(x(2)^2))^2))/(mu*((1+(x(2)*cos(th)))^2))*((F*cos(th)*(1+(1/(1+(x(2)*cos(th))))))+((F*x(2))/(1+(x(2)*cos(th)))));((x(1)^2)*((1-(x(2)^2))^2)*F*sin(th)*(1+(1/(1+(x(2)*cos(th))))))/(mu*x(2)*((1+(x(2)*cos(th)))^2));(x(5)^3*((1+(x(2)*cos(x(3)-th)))^(-2)))/(mu^2);((1e-6)*(x(5)^5)*((1+(x(2)*cos(x(3)-th)))^(-3))) /(mu^3)];
