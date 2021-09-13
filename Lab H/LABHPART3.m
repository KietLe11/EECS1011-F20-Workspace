clear all; close all;
a = arduino('COM8', 'uno')
% https://www.mathworks.com/videos/plotting-live-data-of-atemperature-sensor-using-arduino-and-matlab-121317.html
figure
h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [-0.1 5];
title('time (live) vs Sound sensor voltage');
xlabel('Time [HH:MM:SS]');
ylabel('Voltage [volt]');
startTime = datetime('now');
data_history =[0 0 0 0 0 0 0 0 0 0];

for (iter= 1:1000)
% Read current voltage value
voltage = readVoltage(a,'A2');
   for i=1:10-1
        data_history(iter) = data_history(i+1);
    end
        data_history(10)= voltage;
        avg_sound_data = mean(data_history(1:10));
if  (avg_sound_data>1.75)
    avg_sound_data =1;
else
    avg_sound_data=0;
end
% Get current time
t = datetime('now') - startTime;
% Add points to animation
addpoints(h, datenum(t),avg_sound_data)
% Update axes
ax.XLim= datenum([t-seconds(10) t]);
datetick('x','keeplimits')
drawnow

end


    
    