% LabG_morse_in_Matlab_on_computer_v2.m
clear all; close all

a=arduino('COM8','uno')

writePWMDutyCycle(a,'D5',0)

% ------------------ Position in Array ----------------------------
% 1 2 3 4 5 6 7 8 9 10 11 12 13 14
morse_message = ... % ... means "keep reading to next line
[ 1 1 1 0 1 0 1 1 1 NaN NaN NaN NaN NaN; % row 1: "k"
 0 0 0 0 0 0 NaN NaN NaN NaN NaN NaN NaN NaN; % 3 spaces
 1 1 1 0 1 1 1 0 1 0 1 0 1 NaN; % row 3: "7"
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN; % 3 spaces
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN; % row 5: "S"
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN;  % 6 spaces
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN;  % row 7: "O"
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN;  % 3 spaces
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN;  % row 9: "S"
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN;  % 3 spaces
 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN; ] % row 11: "O"
% -------------------------- end of Array --------------------------------

duration = 0.5; % length of time for a signal [sec]
sample_freq = 40000; % default sample freq. in Hz [8192]
x = 0:(1/sample_freq):duration; % time at which signal changes prop. to sample freq.
freq = 1000; % [hz]
y=sin(2*pi*(x*freq)); % y values (sound amp)
% Assign y to a more obvious name for beeps and silence.
beep = y;
silent = 0*beep; % make all values 0 for a length of time.
% count the number of letters in the array
total_letters = size(morse_message,1);
width_array = size(morse_message,2);
total_sound = 0;
for current_letter = 1:1:total_letters

 array_column = 1;
 % Iterate through each row. Stop when NaN is hit or index exceed width
 % of array
 while (array_column <= width_array)

 % Append a sinusoid for a short duration if 1
 if(morse_message(current_letter,array_column) == 1)
 % add one length of sound
 total_sound = [total_sound beep];
 % Append no sound for a short duration if 0
 elseif(morse_message(current_letter,array_column) == 0)
 % add one length of silence
 total_sound = [total_sound silent];
 else
 % do nothing. Don't append anything
 end

 % go to the next sound in the letter
 array_column = array_column + 1;
 end

end
% Plot the signal
plot(total_sound);
title('Morse Code Signal');
ylabel('Sound Amplitude [-1 to +1]');
xlabel('Sound sample number');
% Play the signal.
sound(total_sound,sample_freq);