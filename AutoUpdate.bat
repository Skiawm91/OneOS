mode con cols=74 lines=24
@echo off
set 7za=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe
set wget=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\wget.exe
cd ..\..\etc
if exist Config.bat (call Config.bat) else (call info.bat)
cd ..\OneOS\System32
goto updates

:updates
timeout /t 2 /nobreak >nul 2>nul
cd temp
set rnd=update%random%%random%
md %rnd%
cd %rnd%
%wget% https://github.com/Skiawm91/OSUpdateInfo/archive/refs/heads/main.zip
ren main.zip OSUpdateInfo-main.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e OSUpdateInfo-main.zip
if EXIST "%ver%"_%channel% (exit) else (goto updates2)

:updates2
if EXIST "%ver%"_ (goto exit) else (goto cupdate)

:cupdate
cd ..\..
timeout /t 1 /nobreak >nul 2>nul
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
if %channel% == Official (%wget% https://github.com/Skiawm91/OSUpdateData/archive/refs/heads/main.zip) else (%wget% https://github.com/Skiawm91/OS%channel%UpdateData/archive/refs/heads/main.zip)
if %channel% == Official (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip) else (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip)
del main.zip
exit