@echo off
echo Updateing...
echo.
cls
echo Starting Update...
copy /Y *.* C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\
copy /Y ver.bat C:\SakuraPC\Systems\GPT\OneOS\Storage\etc
cd ..
cd ..
del NowUpdate.tmp
echo temp > UpdateDone.tmp
echo.
timeout /t 3 /NOBREAK >nul
del ver.bat
del setup.bat
start Kernel32.bat
exit

