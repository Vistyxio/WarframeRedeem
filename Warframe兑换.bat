@echo off
Setlocal enabledelayedexpansion
set n=0
for /f "delims=" %%i in (list.txt) do (
	start "" https://warframe.com/promocode?code=%%i
	set /a n=!n!+1
	if !n! EQU 5 set n=0&pause
)
exit