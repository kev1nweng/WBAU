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
title Win10X������������
echo ���ڼ�����ϵͳ�汾...
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
echo ����ϵͳ�汾: %OsVersion%
echo ���Windows�汾�����ݴ˳���
echo ��ȷ�������õ���Windows 11��
echo . 
echo ���������˳�...
goto exit

:VersionGot 
echo ����ϵͳ�汾: %OsVersion%
echo (����)
echo . 
echo Win10X������������ / by github@kev1nweng
echo =====================
echo ���������ʼ������
pause >nul
reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 1
echo ������ɡ���������˳���
echo *�������ָ�ԭ���������������͹���Ա����������ʾ����������������ָ���س���
echo reg add HKEY_LOCAL_MACHINE\System\ControlSet001\Control\BootControl /v BootProgressAnimation /t REG_DWORD /d 0

pause >nul
goto exit

:exit
exit