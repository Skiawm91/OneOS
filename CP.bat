mode con cols=74 lines=24
@echo off
title OneOS Settings
color %themelod%
goto cpmenu

::主選單::

:cpmenu
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :             System Settings             :
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

::系統::

:system
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :             System Settings             :
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
call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set BootMGR" 1 8 %buttonc% "Update" 17 4 %buttonc% "System Info" 12 8 %buttonc% "Activation" X _Var_Box _Var_Hover
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

:cpsystem5
goto sysinfo

:cpsystem6
goto activation

::關於 & 啟用::

:sysinfo
cls
cd ..\..\etc
call config.bat
cd ..\OneOS\System32
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                    
echo : 電腦名稱: %home%           
echo : 系統型號: OneOS            
echo : 版本: %ver2%               
echo : 組建: %ver%            
echo : 通道: %osdata%             
echo : 啟用狀態: %keys%           
echo : 狀態: %copyorno%
echo :         
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Menu" 34 9 %buttonc% " OK " X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
cls
goto sysinfo%errorlevel%

:sysinfo1
set oscp=startmenu
goto startmenu1

:sysinfo2
goto system

:activation
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                 輸入金鑰                :
echo :               (注意大小寫)              :
echo :                                         :
echo :               看起來像這樣              :
echo :      (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX)    :
echo :                                         :
echo :                                         :
echo :                        輸入 (exit) 離開 :
echo ===========================================
set /p activation=
cd ..\..\etc
call infokey.bat
if %activation% == %key1% goto activationedbasic
if %activation% == %key2% goto activationedbasic
if %activation% == %key3% goto activationedbasic
if %activation% == %key4% goto activationedbasic
if %activation% == %key5% goto activationedbasic
if %activation% == %key6% goto activationedpro
if %activation% == %key7% goto activationedpro
if %activation% == %key8% goto activationedpro
if %activation% == %key9% goto activationedpro
if %activation% == %key10% goto activationedpro
if %activation% == OEM-Activation-Basic goto oemactivationedbasic
if %activation% == OEM-Activation-Pro goto oemactivationedpro
cd ..\OneOS\System32
if %activation% == exit goto system
goto activation

:activationedpro
cd ..\..\etc
echo set keys=已啟用OS，Pro版 >> config.bat
echo set syslevel=Pro >> config.bat
echo set copyorno=此產品是正版 >> config.bat
cd ..\OneOS\System32
goto system

:activationedbasic
cd ..\..\etc
echo set keys=已啟用OS，Basic版 >> config.bat
echo set syslevel=Basic >> config.bat
echo set copyorno=此產品是正版 >> config.bat
cd ..\OneOS\System32
goto system

:oemactivationedpro
cd ..\..\etc
call config.bat
if %oeminfo% == 1 (goto oemactivationleave)
echo set keys=已啟用OS，Pro版 >> config.bat
echo set syslevel=Pro >> config.bat
echo set copyorno=此產品是正版 >> config.bat
echo set oeminfo=1 >> config.bat
cd ..\OneOS\System32
goto system

:oemactivationedbasic
cd ..\..\etc
call config.bat
if %oeminfo% == 1 (goto oemactivationleave)
echo set keys=已啟用OS，Basic版 >> config.bat
echo set syslevel=Basic >> config.bat
echo set copyorno=此產品是正版 >> config.bat
echo set oeminfo=1 >> config.bat
cd ..\OneOS\System32
goto system

:oemactivationleave
cd ..\OneOS\System32
goto system

::主題::

:theme
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :             System Settings             :
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
call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Set Display Mode" X _Var_Box _Var_Hover
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
echo :             System Settings             :
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
call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 14 4 %buttonc% "Dark Mode" 14 8 %buttonc% "Light Mode" X _Var_Box _Var_Hover
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
call themelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

:dark
cd ..\..\etc
echo set themelod=07 > themelod.bat 
timeout /t 1 >nul 2 >nul
call themelod.bat
cd ..\OneOS\System32
color %themelod%
goto lod2

::BootLoader::

:bootmgr
cd ..\..\..\..\EFIStorage\profile
goto mgr

:mgr
cls
echo ===========================================
echo :             System Settings             :
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
set /p comand=
if %comand% == 1 goto delall
if %comand% == 2 goto delauto
if %comand% == 3 goto setos
if %comand% == - goto bmexit
if %comand% == x goto cpexit
goto mgr

:bmexit
cd ..\OneOS\Storage\OneOS\System32
goto cpmenu

:delall
del autopen.bat
cls
del info.bat
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :            Change Successful            :
echo :                                         :
echo :              Wait 2 Sec...              :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
timeout /t 2 >nul
goto mgr

:delauto
del autopen.bat
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :            Change Successful            :
echo :                                         :
echo :              Wait 2 Sec...              :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
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
set /p setdboot=Set Default System=  
if %setdboot% == %load1% goto setdboot
if %setdboot% == %load2% goto setdboot
if %setdboot% == %load3% goto setdboot
if %setdboot% == %load4% goto setdboot
if %setdboot% == %load5% goto setdboot
goto setos

:setdboot
set /p setsys=Set System Name (SakuraOS/OneOS)= 
echo set dboot=%setdboot% >> autopen.bat
echo set dbootsys=%setsys% >> autopen.bat
echo 完成設定！ > info.bat
goto mgr

::SetUpdate::

:preupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :             System Settings             :
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
if %unlock% == 0 (call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Update" 1 8 %buttonc% "Set Channel" 12 4 %buttonc% "AutoUpdate | %auinfo%" X _Var_Box _Var_Hover) else (call Button 1 13 %buttonc% "Menu" 35 9 %buttonc% "<-" 1 4 %buttonc% "Downgrade" X _Var_Box _Var_Hover)
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto preupdate%errorlevel%

:preupdate1
set oscp=startmenu
goto startmenu1

:preupdate2
goto system

:preupdate3
if %unlock% == 0 (goto update) else (goto downgrade)

:preupdate4
goto channelupdate

:preupdate5
cd ..\..\etc
if %auinfo% == OFF (echo set auinfo=ON >> config.bat) else (echo set auinfo=OFF >> config.bat)
call config.bat
cd ..\OneOS\System32
goto preupdate

::Downgrade::

:downgrade
cls
echo 3.00.652
echo 3.00.856
echo 3.00.1011
echo 3.00.1145
set /p downgradever=Version= 
if %downgradever% == 3.00.652 (goto downgrade652)
if %downgradever% == 3.00.856 (goto downgrade856)
if %downgradever% == 3.00.1011 (goto downgrade1011)
if %downgradever% == 3.00.1145 (goto downgrade1145)
if %downgradever% == exit (goto preupdate)
goto downgrade

:downgrade652
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
%wget% https://github.com/Skiawm91/OSUpdateData/archive/dd788682b85fde185a8bb78f331509b131a028b2.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e dd788682b85fde185a8bb78f331509b131a028b2.zip
del dd788682b85fde185a8bb78f331509b131a028b2.zip
cd ..\..\..\..\etc
del /F /Q config.bat
cd ..\OneOS\System32
start Kernel32.bat
exit

:downgrade856
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
%wget% https://github.com/Skiawm91/OSUpdateData/archive/cd012b53caa77b97a3230c688c4d478a816c91f3.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e cd012b53caa77b97a3230c688c4d478a816c91f3.zip
del cd012b53caa77b97a3230c688c4d478a816c91f3.zip
cd ..\..\..\..\etc
del /F /Q config.bat
cd ..\OneOS\System32
start Kernel32.bat
exit

:downgrade1011
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
%wget% https://github.com/Skiawm91/OSUpdateData/archive/018bef29501c745978b207d6a0b7561c51c3afc4.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e 018bef29501c745978b207d6a0b7561c51c3afc4.zip
del 018bef29501c745978b207d6a0b7561c51c3afc4.zip
cd ..\..\..\..\etc
del /F /Q config.bat
cd ..\OneOS\System32
start Kernel32.bat
exit

:downgrade1145
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
%wget% https://github.com/Skiawm91/OSUpdateData/archive/10d608424a5f120bd9c33fe86a7ee379615adad6.zip
C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e 10d608424a5f120bd9c33fe86a7ee379615adad6.zip
del 10d608424a5f120bd9c33fe86a7ee379615adad6.zip
cd ..\..\..\..\etc
del /F /Q config.bat
cd ..\OneOS\System32
start Kernel32.bat
exit

::SettingChannel::

:channelupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo ===========================================
echo :             System Settings             :
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
echo set channel=Dev>> config.bat
call config.bat
cd ..\OneOS\System32
goto channelupdate

:update4
if sys%channel% == sysDev goto errdev
cd ..\..\etc
echo set channel=Beta>> config.bat
call config.bat
cd ..\OneOS\System32
goto channelupdate

:errdev
cls
echo Your Channel is Dev
echo.
pause >nul
goto channelupdate

:update5
if sys%channel% == sysDev goto errdev
if sys%channel% == sysBeta goto errbeta
cd ..\..\etc
echo set channel=Official>> config.bat
call config.bat
cd ..\OneOS\System32
goto channelupdate

:errbeta
cls
echo Your Channel is Beta
echo.
pause
goto channelupdate

::UpdateSystem::

:update
md temp
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :           Checking New Update           :
echo :                                         :
echo :               Please Wait               :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
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
if EXIST "%ver%"_%channel% (goto noupdate) else (goto updates2)

:updates2
if EXIST "%ver%"_ (goto noupdate) else (goto cupdate)

:noupdate
if not %oscpyu% == true (cd ..\..)
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :   Your Computer In The Latest version   :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Menu" 33 9 %buttonc% " OK " X _Var_Box _Var_Hover
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
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :      Your Computer Have New Update      :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call %Button% 1 13 %buttonc% "Menu" 10 8 %buttonc% "Later" 20 8 %buttonc% "Install" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto installnew%errorlevel%

:installnew1
set oscp=startmenu
goto startmenu1

:installnew2
set oscpyu=true
goto noupdate

:installnew3
cls
cd temp
cd %rnd%
call info_%channel%.bat
echo.
echo Please Wait 5 Sec
timeout /t 5 /nobreak >nul
goto installnew

:installnew
cd ..\..
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :         Downloading Update Data         :
echo :                                         :
echo :               Please Wait               :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
timeout /t 1 /nobreak >nul 2>nul
echo Temp > NowUpdate.tmp
cd SoftwareUpdate
md OSUpdateData
cd OSUpdateData
if %channel% == Official (%wget% https://github.com/Skiawm91/OSUpdateData/archive/refs/heads/main.zip) else (%wget% https://github.com/Skiawm91/OS%channel%UpdateData/archive/refs/heads/main.zip)
if %channel% == Official (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip) else (C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe e main.zip)
del main.zip
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :         System Need Fast Restart        :
echo :                                         :
echo :               Please Wait               :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
timeout /t 5 /nobreak >nul
cd ..
cd ..
start Kernel32.bat
exit

::Not Activation::

:cantuse
cls
echo ===========================================
echo :             System Settings             :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                                         :
echo :       Your Computer Not Activation      :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 13 %buttonc% "Menu" 33 9 %buttonc% " OK " X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto themerr%errorlevel%

:themerr2
goto theme

:themerr1
set oscp=startmenu
goto startmenu1

::Exit Settings::

:cpexit
title OneOS
goto comand