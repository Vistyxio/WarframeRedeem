@echo off
Setlocal enabledelayedexpansion

echo var PROMOCODES = new Array(); > 兑换码数组.txt

echo. >> 兑换码数组.txt

set n=0

for /f "delims=" %%i in (PROMOCODES.txt) do (
	echo PROMOCODES[!n!] = "%%i"; >> 兑换码数组.txt
	set /a n=!n!+1
)

exit