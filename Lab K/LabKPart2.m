base_url = 'dd.weather.gc.ca/hydrometric/csv/';
province = ["ON", "ON", "ON", "ON"];
frequency = 'daily';
file_type='csv';
station_id = ["02HA014" "02HC030" "02HC028" "02HC027"];

name = ["REDHILL CREEK AT HAMILTON" "ETOBICOKE CREEK BELOW QUEEN ELIZABETH HIGHWAY", "Little Rouge Creek Near Locust Hill" "Black Creek Near Weston"];


for i=1:1:4
    clear depth_data
    clear depth_minus_reverse
    clear depth_minus
    clear depth_plus 
    
    my_url= strcat('https://', base_url, province(i), '/', frequency, '/', ...
        province(i), '_', station_id(i),'_', frequency,'_hydrometric.', file_type);
    
    gauge_data = webread(my_url);
    depth_data = transpose(gauge_data.WaterLevel_NiveauD_eau_m_);
    
    x = 1:1:length(depth_data);
    
    averageDepthScalar = mean(depth_data); %average
    averageDepthVector = averageDepthScalar * ones(1,length(depth_data)); %average but in a row vector
    stdDepth = std(depth_data);%standard deviation of the depth

    depth_plus = depth_data + stdDepth; %finding the higher value
    depth_minus = depth_data - stdDepth; %finding the lower value

    j=1;
        for k = length(depth_data):-1:1
        depth_minus_reverse(j) = depth_minus(k);
        j=j+1;
        end
    
    subplot(2,2,i);
    plot(x,depth_data,'b', x, averageDepthVector);
    patch([1:1:length(depth_data) length(depth_data):-1:1], [depth_plus depth_minus_reverse],...
       'b', 'facealpha', 0.05, 'edgecolor', 'r', 'edgealpha',0.05)
      
    legend('Depth Data', 'Average Depth', 'Standard Deviation');
    title(strcat('Daily water level at'," ", name(i), ' ID: ', station_id(i)))
    xlabel('Historical Daily Water Level [Day]');
    ylabel('Water level [m]')
    
    
    
end
    
    

