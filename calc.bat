@echo off
set c1= 0
set c2= 0
set c3= 0
set c4= 0
set c5= 0
color 0F
title ­pºâ¾÷
goto menu

:menu
cls
echo =================================
echo. %c1% %c2% %c3% %c4% %c5%
echo =================================
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call Button 1 3 F0 "7" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto c%errorlevel%

:c1
if c1=0 set c1=7
if NOT c1=0 set c1=%c1%7
goto menu