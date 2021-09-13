load test1mc.mat

n= length(x);
sum=0;
for i= 1:n
    curr=x(i);
    sum=sum+curr;
end
avgValue = sum/n;
hist(x,50);