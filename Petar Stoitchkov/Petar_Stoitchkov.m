rng(23)%
A=(1000+1000).*rand(1000,1000) - 1000;
A1=sum(A);
A2=round(A);
A3=sum(A2);
B=[(15-23)*rand(1)*10, (15-23)*rand(1)*60]
disp(sum(A3(1)))
C=A3(120:130)
D = max(C,[ ],2)
E=det(A)
X=eye(1000)
F=A*X
x=0:0.001:3*pi/4
y1=cos(sqrt(x))
y2 = sin(x.*x)
G=plot(x,y1,x,y2)