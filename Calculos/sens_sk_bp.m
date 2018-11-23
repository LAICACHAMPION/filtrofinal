clearvars;
clear;
syms r1 r2 r3 r4 ra rb c1 c2 k s;

k = 1+rb/ra;
w0 = sqrt((1+r1/r3)/(r1*r2*c1*c2));
Q = sqrt(1+r1/r3)/( (1+ (1-k)*r1/r3) *sqrt(r2*c2/r1/c1) + sqrt(r2*c1/r2/c1) + sqrt(r1*c1/r2/c2) );
G = k/(1+ (1-k)*r1/r3 + (1+c1/c2)*r1/r2);

vars = [G, w0, Q];
nvars = size(vars,2);
params = [r1, r2, r3, r4, ra, rb, c1, c2];
nparams = size(params,2);

for i=1:nvars
    for j=1:nparams
        sens(i,j) = simplify(params(j)/vars(i) * diff(vars(i), params(j)));
    end    
end