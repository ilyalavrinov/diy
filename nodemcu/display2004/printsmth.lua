backend_meta = require "lc-i2c4bit"
lc_meta = require "liquidcrystal"

backend = backend_meta{sda=1, scl=2}
print("ILYA BACKEND DONE")
lc = lc_meta(backend, true, true, 20)
print("ILYA INIT DONE")
backend_meta = nil
lc_meta = nil
lc:clear()
print("ILYA CLEAR DONE")
lc:home()
print("ILYA HOME DONE")

i = 0
while true do
	print("Printing Value", i)
	tmr.delay(1000*1000)
	lc:write(tostring(i%10))
	i = i+1
end
