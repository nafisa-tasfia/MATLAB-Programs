xo = 1;
S= input('Enter: ')
es = 0.001;
maxIter = 100;
fprintf('\n%5s %15s %15s\n', 'Iteration', 'Value', 'Error');
fprintf('%5g %15.5g %15s\n', 0, xo, '-');

xold = xo;
xnew = (xold+S/xold)/2;

er = (xnew - xold)/xnew;
fprintf('%5g %15.5g %15.5g\n', 1, xnew, er);

i= 1;

while abs(er)>es && i<maxIter
    i=i+1;
    xold = xnew;
    xnew = (xold+S/xold)/2;
    er = (xnew - xold)/xnew;
    fprintf('%5g %15.5g %15.5g\n', i, xnew, er);
end
