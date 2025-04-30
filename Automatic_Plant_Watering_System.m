clear all;
close all;
a = arduino('COM5', 'uno');

h = initLivePlot();
startTime = datetime('now');

while true
    voltageValue = readVoltage(a, 'A1');
    
    if voltageValue >= 2.8
        writeDigitalPin(a, 'D2', 1);
        disp("Soil is dry!")
    else
        writeDigitalPin(a, 'D2', 0);
        disp("Soil moisture is perfect.")
    end
    disp(voltageValue);
    t = datetime('now') - startTime;
    addpoints(h, datenum(t), voltageValue)
    ax.XLim = datenum([t - seconds(15), t]);
    datetick('x', 'keeplimits')
    drawnow
end

