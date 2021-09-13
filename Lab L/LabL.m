clear all
a = arduino('COM8', 'uno');

button = 0;

while button~=1
    
    sensor = readVoltage(a,'A1');
    
    if (sensor>2.9)
        writeDigitalPin(a,'D2',1);
    else
        writeDigitalPin(a,'D2',0);
    end
    button = readDigitalPin(a,'D6');
end

writeDigitalPin(a,'D2',0);