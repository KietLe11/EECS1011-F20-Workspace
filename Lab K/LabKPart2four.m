my_url ='https://dd.weather.gc.ca/hydrometric/csv/ON/daily/ON_02HC027_daily_hydrometric.csv';
gauge_data = webread(my_url); %all data
depth_data = transpose(gauge_data.WaterLevel_NiveauD_eau_m_); %depth data

x = 1:1:length(depth_data);%length of the data or x axis length

averageDepthScalar = mean(depth_data); %average
averageDepthVector = averageDepthScalar * ones(1,length(depth_data)); %average but in a row vector
stdDepth = std(depth_data);%standard deviation of the depth

depth_plus = depth_data + stdDepth; %finding the higher value
depth_minus = depth_data -stdDepth; %finding the lower value

j=1;
for i = length(depth_data):-1:1
    depth_minus_reverse(j) = depth_minus(i);
    j=j+1;
end


figure(4)

%plotting the depth chart and the average depth chart
plot(x,depth_data,'b', x, averageDepthVector);

%plot the standard deviation shape
patch([1:1:length(depth_data) length(depth_data):-1:1], [depth_plus depth_minus_reverse], 'b', 'facealpha', 0.05, 'edgecolor', 'r', 'edgealpha',0.05);

legend('Depth Data', 'Average Depth', 'Standard Deviation');
title('Daily water Level at Black Creek Near Weston ID: 02HC024');
xlabel('Historical Daily Water Level [Day]');
ylabel('Water level [m]');











