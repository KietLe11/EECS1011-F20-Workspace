function iter = collatz(n)

iter = 0
while (n~=1)
    
    if (rem(n,2) ==0)
        n=n/2
        
    else
        n=3*n+1
        
    end
    iter=iter+1
    
end

end