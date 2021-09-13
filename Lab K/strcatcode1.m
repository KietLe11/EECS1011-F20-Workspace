% Example for “web reading” a CSV file, but by breaking up the address
% into separate components so that you can make a loop that scans different
% stations, not just one.
%
% Normally, we would just do this once on a particular data set:
% % e.g. Read the water gauge data at BC station 07EC003:
% gauge_data = webread('https://dd.weather.gc.ca/hydrometric/csv/BC/daily/BC_07EC003_daily_hydrometric.csv')
base_url = 'dd.weather.gc.ca/hydrometric/csv/'
province = 'BC';
frequency = 'daily';
file_type = 'csv';
station_id = '07EA004'; % Station list is here: https://bit.ly/2qS3dJf
% use the string concatenation function to combine the different strings
my_url = strcat('https://', base_url, province, '/', frequency, '/', ...
province, '_', station_id, ...
'_', frequency, '_hydrometric.', file_type)
% note the use of the three periods (…) above.
% They tell Matlab that the command continues on the next line.
% use webread() to get the data found at the URL
gauge_data = webread(my_url);
% examine the gauge data variable in matlab. The data
% is arranged in columns, with variable names at the top
% of each column. The depth data can be called up using the "." that
% represents data in a structure. That column is called
% WaterLevel_NiveauD_eau_m_
% Here is an example of putting
% that data into the plot function:
plot(gauge_data.WaterLevel_NiveauD_eau_m_);
title("Water Level vs. sample num."); ylabel("[m]"); xlabel("Sample num.");