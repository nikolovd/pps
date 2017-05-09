% Task 1
rng(25)
A = rand(1000)*2000-1000

% Task 2
A1 = sumabs(A)

% Task 3
A2 = round(A)

% Task 4
A3 = sumabs(A2)

% Task 5
B = [(15-25)*rand(1)*10, (15-25)*rand(1)*60]

% Task 6
C = A2(A2(:, 1) < B(1) & A2(:, 1) > B(2), 120:130) % A3 has only one element, so A2 is used

% Task 
D = max(C, [], 2)

% Task 8
E = det(A)

% Task 9
F = A*eye(1000)

% Task 10
x = linspace(0, 3*pi/4, 1000)
y1 = cos(sqrt(x))
y2 = sin(power(x, 2))
plot(x, y1, x, y2)
title('Figures')
legend('y1 = cos(sqrt(x))', 'y2 = sin(power(x, 2))')
