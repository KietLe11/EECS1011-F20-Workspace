function mynewprogram(myvariable)

if (myvariable ==1)
    figure(1);
    plot([1 2 3 4], [10 100 300 -22]);
    title('Plot 1: The user input the number 1');
elseif (myvariable==2)
    figure(1);
    plot([10 20 30 40], [40 50 60 80]);
    title('Plot 2: the user input the number 2');
else
    disp('error! The user selected a wrong number. Choose 1 or 2.')
end
end