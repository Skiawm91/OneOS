@echo off
color 0a
title Sakura NotePad
echo ��: �ϥή�Enter=�U�@��A�p�G���Q�����ܪ��������Y�i�I�ɮצs�bc:\SakuraPC\Systems\GPT\SakuraOSv2\Users\����\Documents
echo.
cd ..
cd ..
cd Users
cd ����
cd Documents
set /p name=�ϥΤ��e���]�@�Ӥ��W: 
set /p name2=�]�w�@�ӫ��(txt���򥻮榡): 
echo �i�}�l�ϥΡI
echo.
goto type

:type
set /p text=
echo. %text% >> %name%.%name2%
goto type