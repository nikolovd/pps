seed = 1;
rng(seed);
minNum = -1000;
maxNum = 1000;
A = (maxNum-minNum) * rand(1000,1000) + minNum;
B = [(15 - seed)*rand(1)*10, (15 - seed)*rand(1)*60];

nice = A(:,1);
help = find(nice > B(1,1) &  nice < B(1,2));
C = A(help,120:130);

D = max(C,[],2);
