 x = [20 30 40 50;21 31 41 51; 25 33 49 56]
 xTotal=0;
 average;
 n = 0;

 
 for i=1:3
     
     for j=1:4
         n = n+1;
         xTotal= xTotal+x(n); 
     end 
 end
 
 average = xTotal/n;