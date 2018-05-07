x = [0:3*pi/4]
y1 = cos(sqrt(x))
y2 = sin(x.*x)
hold on
plot(x,y1)
plot(x,y2)
legend('cos(sqrt(x))',' sin(x,*x)')
title('Homework task10')