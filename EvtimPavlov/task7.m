rng(12);
minNum = -1000;
maxNum = 1000;

A = (maxNum - minNum) .* rand(1000, 1000) + minNum;
B =  [(15 - 12)*rand(1)*10, (15 - 12)*rand(1)*60];

fc = A(1,1:end);
Ai = find(fc > B(1) & fc < B(2));

C = A(Ai, 120:130);
D = max(C, [], 2);
D