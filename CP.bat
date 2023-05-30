@echo off
title OneOS 設定
color %themelod%
goto cpmenu

:cphelp
goto commands
start cphelp.vbs
goto cp

:cpmenu
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定                                  :x:
echo ===========================================
echo :                  設定                   :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 11 5 %buttonc% "System" 22 5 %buttonc% "Theme" 33 9 %buttonc% "Exit" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto cpmenu%errorlevel%

:cpmenu1
set oscp=startmenu
goto startmenu1

:cpmenu2
goto system

:cpmenu3
goto theme

:cpmenu4
set oscp=desktop
goto comand

:system
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定 - 系統                           :x:
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set BootMGR" 1 8 %buttonc% "Update" 17 4 %buttonc% "Update Channel" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto cpsystem%errorlevel%

:cpsystem1
set oscp=startmenu
goto startmenu1

:cpsystem2
goto cpmenu

:cpsystem3
goto bootmgr

:cpsystem4
goto update

:cpsystem5
goto channelupdate

:theme
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定 - 個人化                         :x:
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set Display Mode" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto cptheme%errorlevel%

:cptheme1
set oscp=startmenu
goto startmenu1

:cptheme2
goto cpmenu

:cptheme3
goto lod2

:verlod
cd ..\..\etc
if EXIST basic.bat (goto lod2) else (goto verlod2)

:verlod2
if EXIST pro.bat (goto lod2) else (goto cantuse1)

:cantuse1
cd ..\OneOS\System32
goto cantuse

:lod2
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定 - 個人化 - 設定顯示模式          :x:
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 14 4 %buttonc% "Dark Mode" 14 8 %buttonc% "Light Mode" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto cplod%errorlevel%

:cplod1
set oscp=startmenu
goto startmenu1

:cplod2
goto theme

:cplod3
goto dark

:cplod4
goto light

:light
cd ..\..\etc
echo set themelod=70 > infothemelod.bat
timeout /t 1 >nul 2 >nul
call infothemelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

:dark
cd ..\..\etc
echo set themelod=07 > infothemelod.bat 
timeout /t 1 >nul 2 >nul
call infothemelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

:bootmgr
cd ..\..\..\..\EFIStorage\profile
goto mgr

:setgui
cls
echo ========================================
echo : 設定 - 系統 - 悲傷的哀號           :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :                                      :
echo :   現在此BETA功能以內置，無法再使用   :
echo :                                      :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :start:                 %date%:
pause > nul
goto system

:setguif
cd ..\..\etc
del GUI.bat
cd ..\OneOS\System32
timeout /t 1 >nul 2 >nul
goto setgui

:mgr
cls
echo ========================================
echo : 設定 - 系統 - 設定BootMGR          :x:
echo ========================================
echo :[-]＜－                               :
echo :       設定 - 系統 - 設定BootMGR      :
echo :                                      :
echo :           [1] 移除所有資料           :
echo :           [2] 開啟預設開啟BootMGR    :
echo :           [3] 關閉預設開啟BootMGR    :
echo :                                      :
echo :                                      :
echo ========================================
echo :start:                 %date%:
if %comand% == 1 goto delall
if %comand% == 2 goto delauto
if %comand% == 3 goto setos
if %comand% == - goto bmexit
if %comand% == x goto cpexit
goto mgr

:delall
del autopen.bat
cls
del info.bat
cls
echo ========================================
echo : 設定 - 系統 - 設定BootMGR          :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :               操作成功！             :
echo :                                      :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :start:                 %date%:
timeout /t 2 >nul
goto mgr

:delauto
del autopen.bat
cls
echo ========================================
echo : 設定 - 系統 - 設定BootMGR          :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :               操作成功！             :
echo :                                      :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :start:                 %date%:
timeout /t 2 >nul
goto mgr

:setos
color 0F
timeout /t 1 >nul
call bootlist.bat
cls
echo BootMGR Mode
echo.
echo.      %load1%
echo.      %load2%
echo.      %load3%
echo.      %load4%
echo.      %load5%
echo.
set /p setdboot=請設定預設開機系統: 
if %setdboot% == %load1% goto setdboot
if %setdboot% == %load2% goto setdboot
if %setdboot% == %load3% goto setdboot
if %setdboot% == %load4% goto setdboot
if %setdboot% == %load5% goto setdboot
goto setos

:setdboot
set /p setsys=排除版本號以外，請設定sys名稱(SakuraOS/OneOS)區分大小寫！ 
echo set dboot=%setdboot% >> autopen.bat
echo set dbootsys=%setsys% >> autopen.bat
echo 完成設定！ > info.bat
goto mgr

:system
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定 - 系統                           :x:
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set BootMGR" 1 8 %buttonc% "Update" 1 12 "Update Channel" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto cpsystem%errorlevel%

:channelupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo : 設定 - 系統 - 更新通道                 :x:
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 1 4 %buttonc% "Dev" 1 8 %buttonc% "Beta" 9 4 %buttonc% "Official" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto update%errorlevel%

:update1
set oscp=startmenu
goto startmenu1

:update2
goto system

:update3
cd ..\..\etc
echo set channel=Dev >> info.bat
call info.bat
cd ..\OneOS\System32
goto channelupdate

:update4
if sys%channel% == sysDev goto errdev
cd ..\..\etc
echo set channel=Beta >> info.bat
call info.bat
cd ..\OneOS\System32
goto channelupdate

:errdev
cls
echo 已經位於DEV通道了
echo.
pause
goto channelupdate

:update5
if sys%channel% == sysDev goto errdev
if sys%channel% == sysBeta goto errbeta
cd ..\..\etc
echo set channel= >> info.bat
call info.bat
cd ..\OneOS\System32
goto channelupdate

:errbeta
cls
echo 已經位於BETA通道了
echo.
pause
goto channelupdate

:update
md temp
cls
echo ========================================
echo : 設定 - 系統 - Update                :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :             正在檢查更新             :
echo :          。。。請稍後。。。          :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
goto updates

:updates
timeout /t 4 >nul 2>nul
cd temp
set rnd=update%random%%random%
md %rnd%
cd %rnd%
git clone https://github.com/Skiawm91/OSUpdateInfo.git
cd OSUpdateInfo
if EXIST %ver%_%channel% (goto noupdate) else (goto cupdate)

:noupdate
if %oscpyu% == ture (echo ok) else (cd ..\..\..)
cls
echo ========================================
echo : 設定 - 系統 - Update               :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :            檢查完畢，但              :
echo :           沒有可用的更新             :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :         :                            :
echo :         :            %date% :
echo :         :                            :
call Button 1 12 %buttonc% "Start" 31 8 %buttonc% " OK " X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto noupdate%errorlevel%

:noupdate2
goto system

:noupdate1
set oscp=startmenu
goto startmenu1

:cupdate
cd ..\..\..
cls
echo ========================================
echo : 設定 - 系統 - Update               :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :               有新的更新             :
echo :            是否立刻進行更新          :
echo :                                      :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :         :                            :
echo :         :            %date% :
echo :         :                            :
call Button 1 12 %buttonc% "Start" 10 8 %buttonc% "Later" 20 8 %buttonc% "Install"  X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto installnew%errorlevel%

:installnew1
set oscp=startmenu
goto startmenu1

:installnew2
set oscpyu=ture
goto noupdate

:installnew3
cls
echo ========================================
echo : 設定 - 系統 - Update               :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :         OneOS正在下載更新資料        :
echo :          。。。請稍後。。。          :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
timeout /t 5 >nul 2>nul
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
git clone https://github.com/Skiawm91/OS%channel%UpdateData.git
cd OS%channel%UpdateData
cls
echo ========================================
echo : 設定 - 系統 - Update               :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :         OneOS正在進行快速重啟        :
echo :          。。。請稍後。。。          :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
timeout /t 5 /nobreak >nul
cd ..
start Kernel32.bat
exit

:cantuse
cls
echo ========================================
echo : 設定 - 個人化 - 錯誤                :x:
echo ========================================
echo :                                      :
echo :                                      :
echo :                                      :
echo :          偵測到版本不是正版          :
echo :           您無權使用此功能           :
echo :                                      :
echo :                                      :
echo :                                      :
echo ========================================
echo :         :                            :
echo :         :            %date% :
echo :         :                            :
call Button 1 12 %buttonc% "Start" 31 8 %buttonc% " OK " X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto themerr%errorlevel%

:themerr2
goto theme

:themerr1
set oscp=startmenu
goto startmenu1

:bmexit
cd ..\OneOS\Storage\OneOS\System32
goto cpmenu

:cpexit
title OneOS
goto comand