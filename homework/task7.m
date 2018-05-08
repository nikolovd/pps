rng(4);
minNum=-1e3;
maxNum=1e3;
A=minNum+(maxNum-minNum).*rand(1000,1000);
B=[(15 - 4)*rand(1)*10, (15 - 4)*rand(1)*60];
if any(A(1:1000,1)>B(1)) & any(A(1:1000,1)<B(2)) 
    for helper = 1:1:11
    C(1:1000,helper)=A(1:1000,119+helper)
    disp("There is/are elements in the interval B, so matrix C was made!")
    end
else
    disp("Unfortunately there is no such element")
end
D = max(C,[],2);

    

    
    