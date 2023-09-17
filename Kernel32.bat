::(c) Sakura Inc. ���v�Ҧ��A�ëO�d�@���v�Q::

::�}�o�̻���(�A���O�}�o�̤]���)::

::(���) ���N������A�z���i�b�g��Ҧ��ϥ�::
::(���ϥ�) �]���N������A���ܦ��i��|�A���[�J�A�n�����O�z�]�i�b�g��Ҧ��ϥ�::
::(�L�k�ϥ�) �N��ե�w�g�ᥢ�A�L�k�A�ϥΡA���D�z�i�H��^�ᥢ���ե�::
::�p�G�z�Q�n��S�w�a�����s��A�z�i�H�ϥ�  Ctrl + F �ӷj�M�ե�::

::�A�q�R�O��}�H�n��::

mode con cols=74 lines=24
@echo off
title DEBUG
cls
if "/desktop %~2" == "/desktop /update" (goto comandupdate)
if "%~1" == "/errlog" (goto whyerr)
if "%~1" == "/fastboot" (goto fastboot)
if "%~1" == "/v" (goto sidevariable)
if "%~1" == "/echoon" (@echo on) 
if "%~1" == "/setup" (goto presetup)
if "%~1" == "/oobe" (goto oobe)
if "%~1" == "/desktop" (goto desktophelp)
if "%~1" == "/help" (goto prehelp)
goto oneos

:desktophelp
echo /desktop /update
echo.
cmd
exit

:presetup
cd ..\..\etc
goto setup

:prehelp
echo /errlog
echo /fastboot
echo /v
echo /echoon
echo /setup
echo /oobe
echo /help
echo.
cmd
exit

:whyerr
if exist Kernel32.bat (set kernellog=���`) else (set kernellog=�s�b���D)
if exist CP.bat (set cplog=���`) else (set cplog=�s�b���D)
if exist Button.bat (set buttonlog1=���`) else (set buttonlog1=�s�b���D)
if exist GetInput.exe (set buttonlog2=���`) else (set buttonlog2=�s�b���D)
if exist Getlen.bat (set buttonlog3=���`) else (set buttonlog3=�s�b���D)
if exist Box.bat (set buttonlog4=���`) else (set buttonlog4=�s�b���D)
if exist batbox.exe (set buttonlog5=���`) else (set buttonlog5=�s�b���D)
if exist wget.exe (set wgetlog=���`) else (set wgetlog=�s�b���D)
if exist 7za.exe (set zlog1=���`) else (set zlog1=�s�b���D)
if exist 7za.dll (set zlog2=���`) else (set zlog2=�s�b���D)
if exist 7zxa.dll (set zlog3=���`) else (set zlog3=�s�b���D)
echo Kernel���� = %kernellog%
echo Settings�]�w = %cplog%
echo ���s�ե� = %buttonlog1% %buttonlog2% %buttonlog3% %buttonlog4% %buttonlog5%
echo 7zip�ե� = %zlog1% %zlog2% %zlog3%
echo wget = %wgetlog%
pause >nul
cmd
exit

:oneos
title OneOS
if exist CP.bat (set cplog=ok) else (set cplog=err)
if exist Button.bat (set buttonlog1=ok) else (set buttonlog1=err)
if exist GetInput.exe (set buttonlog2=ok) else (set buttonlog2=err)
if exist Getlen.bat (set buttonlog3=ok) else (set buttonlog3=err)
if exist Box.bat (set buttonlog4=ok) else (set buttonlo4g=err)
if exist batbox.exe (set buttonlog5=ok) else (set buttonlog5=err)
if exist wget.exe (set wgetlog=ok) else (set wgetlog=err)
if exist 7za.exe (set zlog1=ok) else (set zlog1=err)
if exist 7za.dll (set zlog2=ok) else (set zlog2=err)
if exist 7zxa.dll (set zlog3=ok) else (set zlog3=err)
if %cplog% == err (goto bsod)
if %buttonlog1% == err (goto bsod)
if %buttonlog2% == err (goto bsod)
if %buttonlog3% == err (goto bsod)
if %buttonlog4% == err (goto bsod)
if %buttonlog5% == err (goto bsod)
if %zlog1% == err (goto bsod)
if %zlog2% == err (goto bsod)
if %zlog3% == err (goto bsod)
if %wgetlog% == err (goto bsod)

::�������A�]�w(���O���i�H�R)::

:oneos
set user1=Admin
set user2=No
set passwd1=admin
set passwd2=No
set root=root123
set home="No Set Name"
set keys=���ҥ�OS
set copyorno=���t�ΨS������OOBE
set channel=Official
set oscp= 
set oscpyu=false
set auinfo=OFF
set usrpasswd=true
set bootspeed=0
set oeminfo=0
set hideroot=0
set unlock=0

::�t�Ϊ�l���q�A�ҰʹL�{::

title OneOS
::���J�Ҧ��ե�e���ˬd�O�_���b�i���s::
if exist NowUpdate.tmp (goto installupdate)
::�L��s�A���۸��J�ե�::
set button=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\button.bat
set getbutton=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\GetInput.exe
set 7za=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\7za.exe
set wget=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\wget.exe
cd ..\..\etc
if NOT EXIST config.bat (goto oldinfobat) else (call sakos.bat)
if %keys% == Root (goto boot)
if %unlock% == 1 (goto unlockoobe)
cls
if %auinfo% == ON (goto autoupdate)
if EXIST dev (goto fastboot) else (goto boot)

:unlockoobe
cd ..\OneOS\System32
goto oobe

:oldinfobat
if not exist info.bat (goto setup) else (call sakosv3.bat)

:autoupdate
cd ..\OneOS\System32
start/min AutoUpdate.bat
cd ..\..\etc
if EXIST dev (goto fastboot) else (goto boot)

:fastboot
goto loginmenu

:sidevariable
set user1=Admin
set user2=No
set passwd1=admin
set passwd2=No
set root=root123
set home="No Set Name"
set keys=���ҥ�OS
set copyorno=���t�ΨS������OOBE
set channel=Official
echo %user1%
echo %user2%
echo %passwd1%
echo %passwd2%
echo %root%
echo %home%
echo %keys%
echo %copyorno%
echo OS%channel%UpdateInfo
pause >nul
goto oneos

::�w�˵{��::

:setup
call ver.bat
echo  OneOS V%ver% �w�˵{��
echo.
echo.
cd ..\OneOS\System32
call Button 5 5 F0 "install Now" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
timeout /t 1 >nul
cls
echo �w�˵{�����b�}��...
timeout /t 3 >Nul
cls
echo �X������ (��s��2023�~7��23��)
echo =======================================
echo �p�G�z�u�Q�ϥΨt�Ϊ���
echo �о\Ū�H�U����
echo ��z�J��Bug�A�z�i�H����
echo �ӱz�]������u�H�U�n�D
echo 1.�z�����n��WindowsNT���֪�Windows����
echo 2.�z���t�λݭn�䴩Wget
echo =======================================
call Button 14 9 F0 "I Accpet" 27 9 F0 "I Reject" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto rule%errorlevel%

:rule1
if %OS% == Windows_NT (goto ruleok) else (goto errorrule)

:errorrule
echo This System Not Supported Your Computer
pause >nul
exit

:ruleok
cls
echo Installing OneOS...
timeout /t 1 >nul
echo sget Command@1.0
timeout /t 1 >nul
echo Geting Command@1.0
echo Download ing (1%)
echo Download ing (35%)
echo Download ing (40%)
echo Download ing (60%)
echo Download ing (73%)
echo Download ing (88%)
echo Download ing (96%)
echo Download ing (100%)
timeout /t 1 >nul
echo done
timeout /t 1 >nul
echo install ing
timeout /t 3 >nul
echo done
echo sget GUI@1.0
timeout /t 1 >nul
echo Geting GUI@1.0
echo Download ing (1%)
echo Download ing (35%)
echo Download ing (40%)
echo Download ing (60%)
echo Download ing (73%)
echo Download ing (88%)
echo Download ing (96%)
echo Download ing (100%)
timeout /t 1 >nul
echo done
timeout /t 1 >nul
echo install ing
timeout /t 3 >nul
echo done
echo oobe /timeout 10
echo sget oneosaddons
echo Geting oneosaddons
echo Download ing (1%)
echo Download ing (35%)
echo Download ing (40%)
echo Download ing (60%)
echo Download ing (73%)
echo Download ing (88%)
echo Download ing (96%)
echo Download ing (100%)
timeout /t 1 >nul
echo done
timeout /t 1 >nul
echo install ing
timeout /t 3 >nul
echo done
echo set oobe /l chinese
timeout /t 10 >nul
goto oobe

:rule2
cls
cd ..\..\etc
goto setup

::OOBE���q::

:oobe
cls
timeout /t 1 >nul 2>nul
title OneOS OOBE
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                                         :
echo :         �ڭ̻ݭn���Ыؤ@�ӨϥΪ�        :
echo :                                         :
echo :               �Ϊ̪������L              :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
call Button 10 9 F0 "Create User" 26 9 F0 "Skip" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto oobe%errorlevel%

:oobe1
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                                         :
echo :           �г]�w�@�ӨϥΪ̦W��          :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
set /p user1=
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                                         :
echo :                �г]�w�K�X               :
echo :                                         :
echo :          ��J�@�Ӫťզr�ŧY���L         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
set /p passwd1=
goto moresetup1

:moresetup1
cls
cd ..\..\etc
if not exist config.bat (goto moresetup12)
call config.bat
if %unlock% == 0 (goto moresetup12) else (goto moresetup13)

:moresetup13
echo set user1=%user1%>> config.bat
if "%passwd1%" == " " (echo set usrpasswd=false >> config.bat)
echo set passwd1=%passwd1%>> config.bat
call config.bat
cd ..
cd Users
md %user1%
cd %user1%
md Downloads
md Desktop
md Documents
md Musics
cd ..\..\OneOS\System32
goto oobe2

:moresetup12
echo set user1=%user1%> config.bat
if "%passwd1%" == " " (echo set usrpasswd=false >> config.bat)
echo set passwd1=%passwd1%>> config.bat
call config.bat
cd ..
cd Users
md %user1%
cd %user1%
md Downloads
md Desktop
md Documents
md Musics
cd ..\..\OneOS\System32
goto oobe2

:oobe2
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                                         :
echo :              �г]�w�q���W��             :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
set /p name= 
cd ..\..\etc
echo set home=%name% >> config.bat
cd ..\OneOS\System32
goto activationcheck

:activationcheck
if %unlock% == 1 (goto unlockskip) else (goto activation)

:activation
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                                         :
echo :              �бҥγo�x�q��             :
echo :          �I��Activation��J���_         :
echo :               �I��Skip���L              :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
call Button 11 9 F0 "Activation" 26 9 F0 "Skip" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto activation%errorlevel%

:activation1
cd ..\..\etc
goto activation12

:activation12
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                 ��J���_                :
echo :               (�`�N�j�p�g)              :
echo :                                         :
echo :               �ݰ_�ӹ��o��              :
echo :      (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX)    :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
set /p activation=
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
if %activation% == skip goto skip
goto activation

:activation2
goto skip

:skip
cls
echo ===========================================
echo :                OneOS OOBE               :
echo ===========================================
echo :                                         :
echo :                �п������               :
echo :               �H�K����ҥ�              :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo :                                         :
echo ===========================================
call Button 12 8 F0 "Basic" 23 8 F0 " Pro " X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto skip%errorlevel%

:skip1
cd ..\..\etc
echo set keys=���ҥ�OS�ABasic�� >> config.bat
echo basic > basic.bat
echo set copyorno=�����~���O���� >> config.bat
goto reset

:skip2
cd ..\..\etc
echo set keys=���ҥ�OS�APro�� >> config.bat
echo pro > pro.bat
echo set copyorno=�����~���O���� >> config.bat
goto reset

:unlockskip
cd ..\..\etc
echo set keys=Root >> config.bat
echo set copyorno=�w����t�� >> config.bat
cd ..\OneOS\System32
goto reset

:activationedpro
echo set keys=�w�ҥ�OS�APro�� >> config.bat
echo pro > pro.bat
echo set copyorno=�����~�O���� >> config.bat
goto reset

:activationedbasic
echo set keys=�w�ҥ�OS�ABasic�� >> config.bat
echo basic > basic.bat
echo set copyorno=�����~�O���� >> config.bat
goto reset

:load
timeout /2 5 >nul 2>nul
call sakos.bat
goto start

:reset
cd ..\OneOS\System32
cd Drivers
echo set gpu=Skhol Graphics > GPU.bat
cd ..
start Kernel32.bat
exit

::Boot�޾�::

:boot
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (=---------)
echo.
echo.
echo.
if %bootspeed% == 10 (goto boot1) else (set /a bootspeed=%bootspeed%+1)
goto boot

:boot1
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (==--------)
echo.
echo.
echo.
if %bootspeed% == 20 (goto boot2) else (set /a bootspeed=%bootspeed%+1)
goto boot1

:boot2
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (===-------)
echo.
echo.
echo.
if %bootspeed% == 30 (goto boot3) else (set /a bootspeed=%bootspeed%+1)
goto boot2

:boot3
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (====------)
echo.
echo.
echo.
if %bootspeed% == 40 (goto boot4) else (set /a bootspeed=%bootspeed%+1)
goto boot3

:boot4
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (=====-----)
echo.
echo.
echo.
if %bootspeed% == 50 (goto boot5) else (set /a bootspeed=%bootspeed%+1)
goto boot4

:boot5
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (======----)
echo.
echo.
echo.
if %bootspeed% == 60 (goto boot6) else (set /a bootspeed=%bootspeed%+1)
goto boot5

:boot6
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (=======---)
echo.
echo.
echo.
if %bootspeed% == 70 (goto boot7) else (set /a bootspeed=%bootspeed%+1)
goto boot6

:boot7
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (========--)
echo.
echo.
echo.
if %bootspeed% == 80 (goto boot8) else (set /a bootspeed=%bootspeed%+1)
goto boot7

:boot8
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (=========-)
echo.
echo.
echo.
if %bootspeed% == 90 (goto boot9) else (set /a bootspeed=%bootspeed%+1)
goto boot8

:boot9
color 0F
cls
echo.
echo.
echo.         Sakura Inc
echo.
echo.
echo.        (==========)
echo.
echo.
echo.
if %bootspeed% == 100 (goto preloginmenu) else (set /a bootspeed=%bootspeed%+1)
goto boot9

::�n�J�e��::

:preloginmenu
cls
timeout /t 3 /nobreak >nul
cd ..\OneOS\System32
goto loginmenu

:loginmenu
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo.
echo.
echo.       ��ܨϥΪ�
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call %button% 7 5 %buttonc% "%user1%" 8 9 %buttonc% "User" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto login%errorlevel%

:rootmenu
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo.
echo.
echo.       �и���t��
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call %button% 7 5 %buttonc% "Root" 8 9 %buttonc% "Exit" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto root%errorlevel%

:login1
set lusr=%user1%
if %usrpasswd% == false (goto comandwc) else (goto usrpasswd)

:login2
set lusr=User
goto comandwc

:root1
cls
cd ..\..\etc
echo set unlock=1
echo set unlock=1 > config.bat
echo del config.bat
timeout /t /1 /nobreak >nul
echo done
cd ..\OneOS\System32
start Kernel32.bat
exit

:root2
set hideroot=0
goto loginmenu

:usrpasswd
cls
echo.
echo.
echo.
echo.
echo.       ��J %lusr% ���K�X
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p tpasswd=
if %tpasswd% == %passwd1% goto comandwc
goto usrpasswd2

:usrpasswd2
cls
echo.
echo.
echo.
echo.
echo.       ��J %lusr% ���K�X
echo.
echo.      [�Юֹ�K�X�O�_���T]
echo.
echo.
echo.
echo.
echo.
set /p tpasswd=
if %tpasswd% == %passwd1% goto comandwc
goto usrpasswd2

:comandwc
if EXIST UpdateDone.tmp (goto delinstallfile)
goto login

:login
cls
echo.
echo.
echo.       Welcome %lusr%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call %button% 5 5 F0 "Login" 15 5 F0 "Close" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto startmenu%errorlevel%

:startmenu2
set /a hideroot=%hideroot%+1
if %hideroot% == 5 (goto rootmenu) else (goto loginmenu)

::��s�ե�::

:installupdate
cd SoftwareUpdate
cd OSUpdateData
start Setup.bat
exit

:delinstallfile
rmdir /S /Q SoftwareUpdate
md SoftwareUpdate
del /F /Q UpdateDone.tmp
goto startmenu1

::�ୱ::

:comand
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 14 %buttonc% "Menu" 1 1 %buttonc% "Logout" 1 5 %buttonc% "Restart" 1 9 %buttonc% "PowerOFF"  X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto desktop%errorlevel%

:comandupdate
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.               �s����s�w�����A�ݭn���s�Ұ�
echo ===========================================
echo :        :                                :
echo :        :                %date% :
echo :        :                                :
call Button 1 14 %buttonc% "Menu" 1 1 %buttonc% "Logout" 1 5 %buttonc% "Restart" 1 9 %buttonc% "PowerOFF"  X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto desktop%errorlevel%

:desktop1
goto startmenu1

:desktop2
goto loginmenu

:desktop3
goto powereset

:desktop4
goto poweroff

::�{����::

:startmenu1
cls
title OneOS
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
echo =================�{���� [1]================
echo :                                         :
echo :                                         :
echo :                                         :
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
call %button% 1 2 %buttonc% "Help" 10 2 %buttonc% "PCinfo" 21 2 %buttonc% "Calc" 30 2 %buttonc% "Settings" 1 6 %buttonc% "Desktop" 13 6 %buttonc% "SExplorer" 27 6 %buttonc% "SGPUBoost-X" 1 10 %buttonc% "Command Mode" 18 10 %buttonc% " Time " 29 10 %buttonc% "Menu Down" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto start%errorlevel%

::�{����II::

:startmenuii
cls
color %themelod%
echo =================�{���� [2]================
echo :                                         :
echo :                                         :
echo :                                         :
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
call %button% 1 2 %buttonc% "NotePad" 32 10 %buttonc% "MenuUp" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto startii%errorlevel%

::�{�����ާ@::

:start1
goto help

:start2
goto thispc

:start3
goto calc

:start4
goto cp

:start5
if exist NowUpdate.tmp (goto comandupdate) else (goto comand)

:start6
goto intexp

:start7
goto gbmc

:start8
goto command

:start9
goto time

:start10
goto startmenuii

:startii1
goto notepad

:startii2
goto startmenu1

::OneOS�g��Ҧ�::

:command
color 0a
cls
title OneOS (Classic Mode)
echo ��J [help] ���o���U
echo.
set comand=Baohau
set /p comand=OneOS= 
if %comand% == exit goto startmenu1
if %comand% == help goto help 
if %comand% == logoutuser goto usrlogoff
if %comand% == time goto time
if %comand% == pcinfo goto thispc
if %comand% == activation goto yactivation
if %comand% == userinfo goto usrinfo
if %comand% == useradd goto usradd
if %comand% == drivemgr goto drivemgr
if %comand% == unitro goto nitro
if %comand% == notepad goto notepad
if %comand% == sexplorer goto intexp
if %comand% == gpuboost goto gbmc
if %comand% == settings goto cp
if %comand% == calc goto calc
if %comand% == off goto poweroff
if %comand% == reset goto powereset
if %comand% == internet goto internet
if %comand% == cmd cmd
goto command

::=======================================================Systems

::�t�Ϊ���(���)::

:osver
cls
call osver.bat
CD ..\OneOS\System32
goto command

::�ɶ�(���)::

:time
cls
echo �{�b����O%date%�F�ɶ��O%time%
pause
echo.
goto command

::����t��::

:thisPC
cls
call sysmgr.bat
goto sysmgr%errorlevel%

:sysmgr1
goto startmenu1

:sysmgr2
goto comand

::���U����(���)::

:help
cd Commands
start help.vbs
cd ..
goto command

::�ҥιq��(���)::

:yactivation
cls
call activation.bat
goto command

::�ū�::

:bsod
cd Commands 
call BSOD.bat

::�n�X(���ϥ�)::

:usrlogoff
goto loginmenu

::����Τ�(���)::

:usrinfo
echo User1: %user1%
echo User2: %user2%
echo user3: %usradd1%
echo user4: %usradd2%
echo user5: %usradd3%
Pause
echo.
goto command

::�˸m�޲z��(���)::

:drivemgr
call DrivesMGR.bat
Pause
echo.
goto command

::�O�ƥ�::

:notepad
start NotePad.bat
goto comand

::���غ����s����::

:intexp
cd ..
cd ..
cd ProgramFiles
cd SExplorer
start seweb.bat
cd ..
cd ..
cd OneOS
cd System32
goto comand

::�����W�W::

:gbmc
cls
title OneOS GPU Boost Max
echo �W�W�ݭnPro���A�˴���...
timeout /t 2 >nul 2>nul
cd ..\..\etc
if NOT EXIST pro.bat (goto nopro) else (goto gbm)

:gbm
cls
echo �ثe��ܥd���� %random%Mhz
echo.
echo        �W�W�i�H���W
echo
set /p chogbm=�~��(Y/N)? 
if %chogbm% == Y goto gbm
if %chogbm% == N goto exit
cls
goto gbm

::�S���M�~��::

:nopro
echo �ݭnPro���I
CD ..\OneOS\System32
title OneOS
echo.
pause
goto comand

::���}(���)::

:exit
CD ..\OneOS\System32
title OneOS
goto comand

::�]�w::

:cp
call cp.bat
if %oscp% == startmenu (goto startmenu1)
if %oscp% == desktop (goto comand)

::�p���(�L�k�ϥ�)::

:calc
start calc.bat
goto comand

::����::

:poweroff
cls
echo ������...
timeout 5 >nul 2>nul
exit

::����::

:powereset
cls
echo ���b���s�Ұ�...
timeout 5 >nul 2>nul
cd ..\..\..\..\..\..\
start Open.bat
exit

::��������(���)::

:internet
echo OneOS���b�s�W���A��...
timeout /t 3 >nul 2>nul
cd temp
if NOT EXIST ThisTemp.txt (goto ctemp) else (goto link)

:ctemp
md temp
cd temp
echo Thistemp > Tushistemp.txt
cd ..
goto command

:link
echo set rnd=internet%random%%random% > rnd.bat
call rnd.bat
md %rnd%
cd %rnd%
git clone https://github.com/Skiawm91/IntTest.git
cd server
if NOT EXIST server.bat (goto errinternet) else (call server.bat)
cls
echo �s�u���\�I
echo ���A: %server%
cd ..
cd ..
cd ..
pause
goto command

:errinternet
echo �s�u���ѡI
cd ..
cd ..
cd ..
pause
goto command

::System���O��::

::�W�[�Τ�(�L�k�ϥ�)::

:usradd
cd Plugins
call useradd.bat
set /p sl=�]�w�����I�ݭn�n�X(y/n)? 
if %sl% == y goto usrlogoff
if %sl% == n goto comand
echo �A�T�w�A����F��(y/n)
goto bsod

::���o�H���������o���Nitro(���ϥ�)::

:nitro
set pw=
setlocal enabledelayedexpansion
cls
set str=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
for /l %%i in (1,1,16) do (
set /a num=!random!%%62
call set zf=%%str:~!num!,1%%
set pw=!pw!!zf!
)
echo,&echo �z�����ˬd�H���N�X��: https://discord.gift/!pw!
echo.
pause
goto command

::Plugin���O::