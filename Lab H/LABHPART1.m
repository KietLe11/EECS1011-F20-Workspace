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

for (iter=1:1000)
% Read current voltage value
voltage = readVoltage(a,'A2');
% Get current time
t = datetime('now') - startTime;
% Add points to animation
addpoints(h,datenum(t),voltage)
% Update axes
ax.XLim= datenum([t-seconds(15) t]);
datetick('x','keeplimits')
drawnow
end