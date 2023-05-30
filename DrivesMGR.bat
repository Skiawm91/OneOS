@echo off
cd Drivers
call DriversList.bat
cd ..
title 裝置管理員
goto list

:list
echo = 電腦設備 =
echo.
echo GPU: %gpu%
echo.
pause