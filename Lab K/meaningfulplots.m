% define some arbitrary data
y = [1 4 5 5 3 3 4 6 7 3 5 ...
6 3 2 1 1 1 1 4 5 6 4 3 2 ];
x = 1:1:length(y);
% calculate avg & standard deviation
avg_y_scalar = mean(y);
avg_y_vector = avg_y_scalar * ...
ones(1,length(y));
std_y = std(y);
% data + 1 std deviation (above)
y_plus = y + std_y;
% data - 1 std deviation (below)
y_minus = y - std_y;
% create a vector of the avg-std_dev
%that are in reverse order
j=1;
for i = length(y):-1:1
y_minus_reverse(j) = y_minus(i);
j=j+1; % increment j positive
end
% create plot
figure(4)
% plot the data and average
plot(x,y,'b->',x,avg_y_vector);
% plot std deviation shape
patch([1:1:length(y) ...
length(y):-1:1],...
[y_plus y_minus_reverse],...
'b',...
'facealpha',0.05,...% fill colour
'edgecolor','r',...
'edgealpha',0.05) % edge colour
% Legend, Title, axis labels.
legend('original data',...
'average values',...
'standard deviation')
title('Data (avg & std dev)')
xlabel('Sample Number [no units]');
ylabel('Magnitude [units: Quanta]')