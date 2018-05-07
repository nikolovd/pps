seed = 22;
rng(seed);
minNum = -1000;
maxNum = 1000;
A = (maxNum-minNum) * rand(1000,1000) + minNum;
E = det(A);