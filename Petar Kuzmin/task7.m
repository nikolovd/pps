seed = 22;
rng(seed);
minNum = -1000;
maxNum = 1000;
A = (maxNum-minNum) * rand(1000,1000) + minNum;
B =  [(15 - seed)*rand(1)*10, (15 - seed)*rand(1)*60];

store = A(:,1);
help = find(store < B(1,1) & store > B(1,2));

C = A(help,120:130);

D = max(C,[],2);






