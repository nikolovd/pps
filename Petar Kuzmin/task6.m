seed = 22;
rng(seed);
min = -1000;
max = 1000;
A = (max-min) * rand(1000,1000) + min;
B =  [(15 - seed)*rand(1)*10, (15 - seed)*rand(1)*60];

store = A(:,1);
help = find(store < B(1,1) & store > B(1,2));

C = A(help,120:130);
C
   



