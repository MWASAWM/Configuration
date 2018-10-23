On Error Resume Next 

Dim wsh,ye 

set wsh=createobject("wscript.shell") 

for i=1 to 100

wscript.sleep 200

wsh.AppActivate("vbs") 

wsh.sendKeys "^v" 

wsh.sendKeys "%s" 

next 

wscript.quit