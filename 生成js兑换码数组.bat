@echo off
Setlocal enabledelayedexpansion

echo var PROMOCODES = new Array(); > �һ�������.txt

echo. >> �һ�������.txt

set n=0

for /f "delims=" %%i in (PROMOCODES.txt) do (
	echo PROMOCODES[!n!] = "%%i"; >> �һ�������.txt
	set /a n=!n!+1
)

exit