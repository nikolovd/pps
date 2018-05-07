s = 21;
rng(s);
A = 2000 * rand(1000,1000) - 1000;
B =  [(15 - s)*rand(1)*10, (15 - s)*rand(1)*60];
st = A(1,1:1000);
Row = find(st < B(1) & st > B(2));
C = A(Row, 120:130);

