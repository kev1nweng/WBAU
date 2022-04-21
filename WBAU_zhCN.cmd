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
::Zh4grVQjdCmDJH6N4EolKltkXguIOWiuFYkr4eaqv/LHgEISQOsxf8/61L2DIfQa5UukQJgh2XlRndkwOzl5Sy2xZiwalj0Q+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Win10X启动动画解锁
echo 正在检查操作系统版本...
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
echo 操作系统版本: %OsVersion%
echo 你的Windows版本不兼容此程序！
echo 请确认你是用的是Windows 11。
echo . 
echo 点击任意键退出...
goto exit

:VersionGot 
echo 操作系统版本: %OsVersion%
echo (兼容)
echo . 
echo Win10X启动动画解锁 / by github@kev1nweng
echo =====================
echo 按任意键开始操作。
pause >nul
reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 1
echo 操作完成。按任意键退出。
echo *如果你想恢复原来的启动动画，就管理员运行命令提示符并输入下面这条指令后回车：
echo reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 0

pause >nul
goto exit

:exit
exit