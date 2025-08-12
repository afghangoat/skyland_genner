SetLocale "en-us" 
set wshshell = wscript.CreateObject("wscript.shell")

wscript.sleep 5000
base=1
increment=1
for i = 1 To 50
	wscript.sleep 100
	wshshell.Sendkeys "t"
	wscript.sleep 100
	wshshell.Sendkeys "{/}tp {~} {~}1 {~}"
	wscript.sleep 100
	wshshell.Sendkeys "{enter}"
	wscript.sleep 600
	wshshell.Sendkeys "t"
	wscript.sleep 100
	wshshell.Sendkeys "{/}{/}cyl glass " 'stone,andesite,cobblestone,stone'
	wshshell.Sendkeys base
	wshshell.Sendkeys " 1"
	wshshell.Sendkeys "{enter}"
	wscript.sleep 200
	base = base + (increment * 0.51)
	increment = increment * 1.03
	increment = Round(increment, 2)
	base = Round(base, 2)
	base = Replace(base, ",", ".")
	'base = Format( floatValue, "00.000")'
Next
