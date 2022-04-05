clear all
close all 

x=sym('x1', [2,1]);
x0=[-0.36; 0.56];
G=[x(1)-2*x(2)^2+1; -x(1)^2+2*x(2)-1];
J=jacobian(G);
eps=0.001;
delta=1;
k=0;
while delta>eps
    W=subs(J,x,x0);
    F=subs(G,x,x0);
    deltaX=W\-F;
    x0=x0+deltaX;
    k=k+1;
    delta=max(abs(deltaX));
end
vpa(x0)
fprintf('broi iteracii %1.1d\n',k)
