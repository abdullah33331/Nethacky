@echo off
Title nethacky
Color A
Echo Hello!Welcome to nethacky
echo          ======================================
echo.
echo              1) Hack_network
echo.
echo              2) Exit_nethacky
echo.
echo          ======================================
choice /c 12
if %errorlevel% EQU 1 goto hack
if %errorlevel% EQU 2 goto exit_nethacky
:exit_nethacky
exit
:hack
netsh wlan show profiles
set /p wifi="Enter name of one of valid active wifi to hack: "
netsh wlan show profiles %wifi% key=clear
pause