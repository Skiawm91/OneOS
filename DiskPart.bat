@echo off
color 0a
cd ..\..\etc
call info.bat
cd ..
cd ..
title OneOS磁碟設定工具

:enter
set /p passwd=請輸入Root密碼: 
if %passwd% == %root% goto help1
echo 密碼錯誤！請檢查密碼
goto enter

:help1
goto help

:help
cls
echo.
echo =======指令工具=======
echo.
echo     help 調出此目錄
echo     rm 刪除一個磁碟
echo     md 新增一個磁碟區
echo     mtg 轉換磁碟程式
echo.
echo =====================
echo.
goto command

:command
set /p command=指令: 
if %command% == help goto h
if %command% == rm goto rm
if %command% == md goto md
if %command% == mtg goto mtg
goto help

:h
goto help

:rm
set /p rm=你要刪除的磁碟名稱: 
timeout /t 3 >nul 2>nul
del %rm%
rmdir %rm%
echo DiskPart: 目標操作完成！
goto exit

:md
set /p md=你要新增的磁碟名稱: 
timeout /t 3 >nul 2>nul
mkdir %md%
echo DiskPart: 目標操作完成！
goto exit

:exit
timeout /t 2 >nul 2>nul
goto h

:errrm
echo DiskPart: 目標操作失敗！
goto rm

:errmd
echo DiskPart: 目標操作失敗！
goto md

:mtg
cls
title DiskPart MtG Mode
echo verify = 驗證磁碟
echo convert = 轉換磁碟
echo exit = 退出
echo.
goto mtg2

:mtg2
set /p mtg=MBR2GPT: 
if %mtg% == verify goto mtgv
if %mtg% == convert goto mtgc
if %mtg% == help goto mtg
goto mtg

:mtgv
echo MBR2GPT: 驗證磁碟中...
timeout /t 2 >nul 2>nul
echo MBR2GPT: 驗證磁碟需要偵測分區是否存在於GPT
echo MBR2GPT: 這將需要一些時間...請稍後
timeout /t 5 >nul 2>nul
cd EFIStorage
if NOT EXIST BootMGR.bat (goto vok) else (goto verr)

:verr
cd ..
cd SakuraOSv2
echo MBR2GPT: 驗證失敗！
echo MBR2GPT: 磁碟不在MBR格式中...
echo MBR2GPT: 不需要轉換！
echo.
pause
goto mtg

:vok
cd Oneos
cls
echo MBR2GPT: 驗證成功！
echo.
pause
goto mtg

:mtgc
echo MBR2GPT: 驗證磁碟中...
timeout /t 2 >nul 2>nul
echo MBR2GPT: 驗證磁碟需要偵測分區是否存在於GPT
echo MBR2GPT: 這將需要一些時間...請稍後
timeout /t 5 >nul 2>nul
cd EFIStorage
if NOT EXIST BootMGR.bat (goto cok) else (goto verr)

:cok
cls
echo MBR2GPT: 驗證成功！開始轉換
echo  MBR2GPT:  刪除舊啟動文件
timeout /t 4 >nul 2>nul
echo MBR2GPT: 複製所有文件到新模式
xcopy SakuraOSv2 C:\SakuraPC\Systems\GPT\
timeout /t 3 >nul 2>nul
echo MBR2GPT: 正在創建新Boot檔案
timeout /t 4 >nul 2>nul
cd ..
cd GPT
md EFIStorage
cd ..
cd MBR
cd Boot
xcopy /E *.* C:\SakuraOS\Systems\GPT\EFIStorage
del profile
rmdir profile
cd ..
del Boot
rmdir Boot
cd ..
cd GPT
echo MBR2GPT: 轉換完成！接著30秒後重新開機！
timeout /t 30 >nul 2>nul
cd OneOS
cd Storage
cd OneOS
cd System32
start Kernel32.bat
cd ..
cd ..
cd ..
cd ..
cd ..
cd MBR
del OneOS
rmdir OneOS
exit