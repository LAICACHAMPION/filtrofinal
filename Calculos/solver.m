clearvars;
syms m nn positive;

Q = 1.68;
f0 = 11111;
G = 10^(6.3/20);
m = 1.1;
%seteo el sistema de ecuaciones del circuito 
n = eval(solve(sqrt(nn*m) - Q*( nn*(1+m) + 1 - G ) == 0, nn));


c2 = 10e-9;
c1 = m*c2;
r2 = 1/(2*pi()*f0*c2*sqrt(n*m));
r1 = n*r2;

r4 = 1e3;
r3 = (G-1)*r4;


sqr2 = (c1*r1*r3 + c2*r1*r3 + c2*r2*r4)/(2*c1*r1*r3 + 2*c2*r1*r3 - 2*c2*r2*r4);
sqr4 = (c2*r2*r4)/(r3*(r1*(c1 + c2) - (c2*r2*r4)/r3));
sqc2 = (c1*r1*r3 - c2*r1*r3 + c2*r2*r4)/(2*c1*r1*r3 + 2*c2*r1*r3 - 2*c2*r2*r4);
 