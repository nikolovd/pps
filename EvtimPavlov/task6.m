rng(12);
min = -1000;
max = 1000;

A = (max - min) .* rand(1000, 1000) + min;
B =  [(15 - 12)*rand(1)*10, (15 - 12)*rand(1)*60];

fc = A(1,1:end);
Ai = find(fc > B(1) & fc < B(2));

C = A(Ai, 120:130);
C