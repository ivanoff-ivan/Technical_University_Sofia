clear all
close all

n=6;
t0=0;
tf=1;
h=0.5;
y=sym ('y', [n,1]);
y(1)=0;                        
y(n)=0;
t=linspace(t0,tf,n);
M=sym ('M',[n-2,1]);            

for i=2:n-1
   M(i-1)=y(i+1)-2*y(i)+y(i-1)==-y(i)*h^2;        
end

vpa(M)
[A,b]=equationsToMatrix(vpa(M))                    
Y=vpa(A\b,6)                    
Y=cat(1,y(1),Y,y(n))            
plot(t,Y);

