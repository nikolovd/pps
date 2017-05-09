rng(14)%
A=(1000+1000).*rand(1000,1000) - 1000;
A1=sum(A);
A2=round(A);
A3=sum(A2);
B=[(15-14)*rand(1)*10, (15-14)*rand(1)*60];
disp(sum(A(1)))
C=A(120:130);
E=det(A);
X=eye(1000);
F=A*X ;
x=0:0.001:3*pi/4 ;
y1=cos(sqrt(x)) ;
plot(y1);
y2=sin(x.*x);
plot(y2)
plot(x,y1,x,y2)