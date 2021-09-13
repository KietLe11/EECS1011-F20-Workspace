


numberOfLoops = randi([2,5],1);
newnumber=0;
sumnumber=0;

for i=1:1:numberOfLoops
    
    newnumber=input('Type Number:');
    fprintf('\n');
    sumnumber = sumnumber +newnumber;
    fprintf('The sum of  the numbers:  %0.1f', sumnumber);
    fprintf('\n');
end
fprintf('Final sum: %0.1f',sumnumber);