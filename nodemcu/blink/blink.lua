do
pin=1
gpio.mode(pin, gpio.OUTPUT)
ligth = 1

function blink()
    gpio.write(pin, ligth)
    -- print("Write to pin "..ligth)
    ligth = (ligth == 0) and 1 or 0 
end
tmr.create():alarm(500, tmr.ALARM_AUTO, blink)
end
