@echo off
cd Drivers
call DriversList.bat
cd ..
title �˸m�޲z��
goto list

:list
echo = �q���]�� =
echo.
echo GPU: %gpu%
echo.
pause