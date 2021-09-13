% SOS in Morse on Arduino buzzer (version 1) % Assumption alert! we assume that you’re already connected to the
% board in MATLAB and that
% the connection object is called “a”.
% ---------- 's' ------------
clear all; close all

a=arduino('COM8','uno')
% 'long'
writePWMDutyCycle(a,'D5',0.33); pause(0.4); writeDigitalPin(a,'D5',0);
pause(0.2);
% 'short'
writePWMDutyCycle(a,'D5',0.33); pause(0.2); writeDigitalPin(a,'D5',0);
pause(0.2);
% 'long'
writePWMDutyCycle(a,'D5',0.33); pause(0.4); writeDigitalPin(a,'D5',0);
pause(0.2);