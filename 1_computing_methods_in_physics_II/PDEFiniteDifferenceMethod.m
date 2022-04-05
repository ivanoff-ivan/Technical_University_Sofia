ht=0.1;
ta=0;
tb=0.2;
nt=(tb-ta)/ht;
nt=nt+1;

nx=6;
xa=0;
xb=10;
h=(xb-xa)/(nx-1);

k=0.835;
lambda=k*(ht/(h^2));
x=linspace(xa,xb,nx);
T=zeros(nt,nx);
T(:,1)=100;
T(:,nx)=100;
for i=2:nx-1
 for j=1:nt-1
    T(j+1,i)=lambda*T(j,i-1)+(1-2*lambda)*T(j,i)+lambda*T(j,i+1);
 end
end
T
plot(x,T(nt,:))