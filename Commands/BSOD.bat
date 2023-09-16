@echo off
color 37
goto 1

:1
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 1%
goto 2

:2
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 15%
goto 3

:3
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 30%
goto  4

:4
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 50%
goto 5

:5
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 65%
goto 6

:6
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 84%
goto 7

:7
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 87%
goto 8

:8
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 95%
goto 9

:9
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 99%
goto 10

:10
timeout /t 3 /nobreak >nul
cls
echo          =
echo         =
echo ::::    =
echo ::::    =  
echo         =
echo         =
echo ::::    =
echo ::::    =
echo         =
echo          =
echo.
echo 您的電腦發生問題，因此必須重新啟動。
echo 我們剛剛正在收集某些錯誤資訊，接著我們會為您重新啟動。
echo.
echo 已完成 100%
timeout /t 3 /nobreak >nul
goto reset

:reset
cd ..
start Kernel32.bat /errlog
exit
