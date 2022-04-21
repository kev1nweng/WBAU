::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJH6N4EolKltkXguIOWiuFYkr4eaqv/LHgEISQOsxf8/61L2DIfQa5UukQJgh2XlRndkwOzl5Sy2uYDoHlj0Q+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Win10x Booting Animation Unlocker
echo Checking OS Version...
choice /t 3 /d y /n >nul

set OsVersion=0
ver|findstr /r /i "[ 10.0.22000.*]" > NUL && goto Windows11
goto Unsupported

:Windows11
set Osversion="Windows 11"
goto VersionGot

:Unsupported
set OsVersion="Unsupported Version"
echo .
echo Operating System Version: %OsVersion%
echo Your Windows version is unsupported!
echo Make sure to use Windows 11. 
echo . 
echo Press any key to quit...
pause >nul
goto exit

:VersionGot 
echo Operating System Version: %OsVersion%
echo (Supported)
echo . 
echo Win10x Booting Animation Unlocker / by github@kev1nweng
echo =====================
echo Press any key to start the operation. 
pause >nul
reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 1
echo Operation Completed. Press any key to quit.
echo *If you want to switch back to the origional animation, just run Command Prompt as Administrator and insert the command below: 
echo reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 0

pause >nul
goto exit

:exit
exit