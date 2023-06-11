@echo off
set c1=0
color 0F
title ­pºâ¾÷
goto menu

:menu
cls
echo =================================
echo  %c1% %c2% %c3% %c4% %c5%
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
call Button 1 3 F0 "7" 7 3 F0 "8" 13 3 F0 "9" 1 7 F0 "4" 7 7 F0 "5" 13 7 F0 "6" 1 11 F0 "1" 7 11 F0 "2" 13 11 F0 "3" 1 15 F0 "C" 7 15 F0 "0" 13 15 F0 "." X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto c%errorlevel%

:c1
if NOT %c1% == 0 (set c1=%c1%7)
if %c1% == 0 (set c1=7)
goto menu

:c2
if NOT %c1% == 0 (set c1=%c1%8)
if %c1% == 0 (set c1=8)
goto menu

:c3
if NOT %c1% == 0 (set c1=%c1%9)
if %c1% == 0 (set c1=9)
goto menu

:c4
if NOT %c1% == 0 (set c1=%c1%4)
if %c1% == 0 (set c1=4)
goto menu

:c5
if NOT %c1% == 0 (set c1=%c1%5)
if %c1% == 0 (set c1=5)
goto menu

:c6
if NOT %c1% == 0 (set c1=%c1%6)
if %c1% == 0 (set c1=6)
goto menu

:c7
if NOT %c1% == 0 (set c1=%c1%1)
if %c1% == 0 (set c1=1)
goto menu

:c8
if NOT %c1% == 0 (set c1=%c1%2)
if %c1% == 0 (set c1=2)
goto menu

:c9
if NOT %c1% == 0 (set c1=%c1%3)
if %c1% == 0 (set c1=3)
goto menu

:c10
set c1=0
set c2=
set c3=
set c4=
set c5=
goto menu

:c11
if NOT %c1% == 0 (set c1=%c1%0)
if %c1% == 0 (set c1=0)
goto menu

:c12
if NOT %c1% == 0 (set c1=%c1%.)
if %c1% == 0 (set c1=0.)
goto menu
