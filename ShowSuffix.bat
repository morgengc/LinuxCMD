@echo off

REM һ����ʾ�������غ�׺��

set v=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt
for /f "skip=4 tokens=3" %%a in ('reg query %v%') do set/a a=!%%a
reg add %v% /t REG_DWORD /d %a% /f

