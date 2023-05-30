@echo off
color 0a
title Sakura NotePad
echo 註: 使用時Enter=下一行，如果不想打的話直接關閉即可！檔案存在c:\SakuraPC\Systems\GPT\SakuraOSv2\Users\公用\Documents
echo.
cd ..
cd ..
cd Users
cd 公用
cd Documents
set /p name=使用之前先設一個文件名: 
set /p name2=設定一個後綴(txt為基本格式): 
echo 可開始使用！
echo.
goto type

:type
set /p text=
echo. %text% >> %name%.%name2%
goto type