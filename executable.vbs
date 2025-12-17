dim count
set object = wscript.CreateObject("wscript.shell")

do
object.run "message_box.vbs"
count = count + 1
loop until count = 300