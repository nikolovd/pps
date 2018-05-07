x = [0, 3*pi/4];
y1 = cos(sqrt(x));
y2 = sin(x.*x);
plot(x,y1)
hold on;
plot(x,y2)
legend('Y1,BLUE', 'Y2,RED')
title('Zaglavie')
hold off;