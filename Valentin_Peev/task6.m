rng(5);
A = -1e3+(1e3 + 1e3).*rand(1000,1000);
B =  [(15 - 5)*rand(1)*10, (15 - 5)*rand(1)*60];
Ai1 = A(:,1);
B
result = find(Ai1 > B(1,2) & Ai1 < B(1,1));
C = A(result, 120:130);
C

