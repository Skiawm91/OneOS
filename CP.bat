@echo off
title OneOS 系統設定
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
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Menu" 11 5 %buttonc% "System" 22 5 %buttonc% "Theme" 33 9 %buttonc% "Exit" X _Var_Box _Var_Hover
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
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Start" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set BootMGR" 1 8 %buttonc% "Update" X _Var_Box _Var_Hover
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
goto preupdate

:theme
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
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
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
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
echo set themelod=70 > themelod.bat
timeout /t 1 >nul 2 >nul
call infothemelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

:dark
cd ..\..\etc
echo set themelod=07 > themelod.bat 
timeout /t 1 >nul 2 >nul
call infothemelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

:bootmgr
cd ..\..\..\..\EFIStorage\profile
goto mgr

:setguif
cd ..\..\etc
del GUI.bat
cd ..\OneOS\System32
timeout /t 1 >nul 2 >nul
goto setgui

:mgr
cls
echo ========================================
echo :                系統設定              :
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
set /p comand=
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
echo :               系統設定               :
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
timeout /t 2 >nul
goto mgr

:delauto
del autopen.bat
cls
echo ========================================
echo :               系統設定               :
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

:preupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Update" 1 8 %buttonc% "Set Channel" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto preupdate%errorlevel%

:preupdate1
set oscp=startmenu
goto startmenu1

:preupdate2
goto system

:preupdate3
goto update

:preupdate4
goto channelupdate

:channelupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :                 系統設定                :
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
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call %Button% 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Dev" 1 8 %buttonc% "Beta" 9 4 %buttonc% "Official" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto update%errorlevel%

:update1
set oscp=startmenu
goto startmenu1

:update2
goto preupdate

:update3
cd ..\..\etc
echo set channel=Dev>> info.bat
call info.bat
cd ..\OneOS\System32
goto channelupdate

:update4
if sys%channel% == sysDev goto errdev
cd ..\..\etc
echo set channel=Beta>> info.bat
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
echo set channel=Official>> info.bat
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
echo :               系統設定               :
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
%wget% https://github.com/Skiawm91/OSUpdateInfo/archive/refs/heads/main.zip
ren main.zip OSUpdateInfo-main.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e OSUpdateInfo-main.zip
if EXIST "%ver%"_ (goto updates2) else (goto cupdate)

:updates2
if EXIST "%ver%"_%channel% (goto noupdate) else (goto cupdate)

:noupdate
if not %oscpyu% == true (cd ..\..\..)
cls
echo ========================================
echo :               系統設定              :
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
set oscpyu=false
goto preupdate

:noupdate1
set oscpyu=false
set oscp=startmenu
goto startmenu1

:cupdate
cd ..\..
cls
echo ========================================
echo :               系統設定              :
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
echo :        :                             :
echo :        :             %date% :
echo :        :                             :
call %Button% 1 12 %buttonc% "Menu" 10 8 %buttonc% "Later" 20 8 %buttonc% "Install"  X _Var_Box _Var_Hover
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
cd temp
cd %rnd%
call info_%channel%.bat
echo.
echo 5秒後開始更新
timeout /t 5 /nobreak >nul
goto installnew

:installnew
cd ..\..
cls
echo ========================================
echo :               系統設定               :
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
md OSUpdateData
cd OSUpdateData
if %channel% == Official (%wget% https://github.com/Skiawm91/OSUpdateData/archive/refs/heads/main.zip) else (%wget% https://github.com/Skiawm91/OS%channel%UpdateData/archive/refs/heads/main.zip)
if %channel% == Official (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip) else (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip)
del main.zip
cls
echo ========================================
echo :               系統設定               :
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
cd ..
start Kernel32.bat
exit

:cantuse
cls
echo ========================================
echo :               系統設定               :
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
echo :        :                             :
echo :        :             %date% :
echo :        :                             :
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