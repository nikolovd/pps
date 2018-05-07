rng(12);
min = -1000;
max = 1000;

A = (max - min) .* rand(1000, 1000) + min;
A1 = sum(A);

