'VBS FIREFOX TROLL SCRIPT by Atlas
'Github @AtlasMerc

set aShell = CreateObject("WScript.Shell")
set Service = GetObject ("winmgmts:")

Dim cnt
cnt = array("right", "down", "left", "up")

do while true
	
	for each Process in Service.InstancesOf ("Win32_Process")
		If Process.Name = "firefox.exe" then
			for each item in cnt
        			aShell.SendKeys "^%{" & item & "}"
        			WScript.Sleep 3000
			next
		end if
	next
loop
