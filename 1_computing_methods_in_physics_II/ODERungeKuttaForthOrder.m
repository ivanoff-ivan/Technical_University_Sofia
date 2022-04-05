xi=0;
xf=0.2;
h=0.1;
nc=(xf-xi)/h;
syms xs ys;
func=xs*ys;
x=zeros(nc,1);
y=zeros(nc,1);
x(1)=0;
y(1)=1;
for i=2:nc+1
    k1=subs(func,[xs,ys],[x(i-1),y(i-1)]);
    k2=subs(func,[xs,ys],[x(i-1)+h/2,y(i-1)+k1*h/2]);
    k3=subs(func,[xs,ys],[x(i-1)+h/2,y(i-1)+k2*h/2]);
    k4=subs(func,[xs,ys],[x(i-1)+h,y(i-1)+k3*h]);
    y(i)=y(i-1)+h*(k1+2*k2+2*k3+k4)/6;
    x(i)=x(i-1)+h;
end
[x,y]
plot(x,y)