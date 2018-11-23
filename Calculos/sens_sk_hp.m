clearvars;
clear;
syms r1 r2 c1 c2 s;

w0 = 1/sqrt(r1*r2*c1*c2);
Q = sqrt(r1*r2*c1*c2)/(r1*(c1+c2));

vars = [w0, Q];
nvars = size(vars,2);
params = [r1, r2, c1, c2];
nparams = size(params,2);

for i=1:nvars
    for j=1:nparams
        sens(i,j) = simplify(params(j)/vars(i) * diff(vars(i), params(j)));
    end    
end