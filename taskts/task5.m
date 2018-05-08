seed=23;
rng(seed);
min=-1000;
max=1000;
A=(max-min)*rand(1000,1000)+min;
B=[(15 - seed)*rand(1)*10, (15 - seed)*rand(1)*60];
B