::(c) Sakura Inc. ���v�Ҧ��A�ëO�d�@���v�Q::

::�}�o�̻���(�A���O�}�o�̤]���)::

::(���) ���N������A�z���i�b�g��Ҧ��ϥ�::
::(���ϥ�) �]���N������A���ܦ��i��|�A���[�J�A�n�����O�z�]�i�b�g��Ҧ��ϥ�::
::(�L�k�ϥ�) �N��ե�w�g�ᥢ�A�L�k�A�ϥΡA���D�z�i�H��^�ᥢ���ե�::
::�p�G�z�Q�n��S�w�a�����s��A�z�i�H�ϥ�  Ctrl + F �ӷj�M�ե�::

::�A�q�R�O��}�H�n��::

@echo off
title DEBUG
cls
if "%~1" == "/fastboot" (goto fastboot)
if "%~1" == "/v" (goto sidevariable)
if "%~1" == "/echoon" (@echo on) 
if "%~1" == "/setup" (goto presetup)
if "%~1" == "/help" (goto prehelp)
goto oneos

:presetup
cd ..\..\etc
goto setup

:prehelp
echo /fastboot
echo /v
echo /echoon
echo /setup
echo /help
echo.
cmd
exit

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
set channel=

::�t�Ϊ�l���q�A�ҰʹL�{::

title OneOS
::���J�Ҧ��ե�e���ˬd�O�_���b�i���s::
if exist NowUpdate.tmp (goto installupdate)
::�L��s�A���۸��J�ե�::
set button=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\button.bat
set getbutton=C:\SakuraPC\Systems\GPT\OneOS\Storage\OneOS\System32\GetInput.exe
cd ..\..\etc
if NOT EXIST info.bat (goto setup) else (call sakosv3.bat)
cls
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
set channel=1
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
echo �X������ (��s��2023�~5��25��)
echo =======================================
echo ���t�Υ������A���t�Ψѹ��A
echo �p�G�z�n�ϥΥ��t�ΰ���G��
echo �иg�LSakura inc.�����H�����P�N�G��
echo �p Skiawm91#4429
echo OneOS���\�঳���~�ө�SakuraOSv2
echo ��SakuraOSv2�i�G��
echo �ҥH�z�j�i�ϥ�SakuraOSv2�G��
echo �p�G�z�u�Q�ϥΨt�Ϊ���
echo �о\Ū�H�U����
echo ��z�J��Bug�A�z�i�H����
echo �ӱz�]������u�H�U�n�D
echo 1.�z�����n��Windows_NT���֪�Windows����
echo 2.�z���t�Τ]�ݭn�䴩GIT�A�_�h�z�L�k��s
echo 3.�z�����w��Git
echo �٦��A�Y�z�Q���秹��\��
echo �ݭn�ʶR���_�I
echo �����i�D�������u�A�p�G�A�}�u�i��|�Q�}��
echo =======================================
call Button 14 20 F0 "I Accpet" 27 20 F0 "I Reject" X _Var_Box _Var_Hover
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
cd ..\OneOS\System32
echo              Set User else Skip
call Button 10 5 F0 "Create User" 26 5 F0 "Skip" X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%
goto oobe%errorlevel%

:oobe2
cls
goto moresetup2

:oobe1
cd ..\..\etc
cls
timeout /t 1 >nul 2>nul
title OneOS OOBE
echo =============��{==============
echo *1.�]�w�ϥΪ�
echo  2.�]�wroot�K�X
echo  3.�]�wOneOS�D���W��
echo  4.�ҥ�
echo  5.���s�Ұ�
echo ==============================
echo.
set /p user1=�г]�w�ϥΪ̦W��: 
set /p passwd1=�г]�w%user1%���K�X: 
echo.
goto moresetup

:moresetup
cls
echo set user1=%user1% > info.bat
echo set passwd1=%passwd1% >> info.bat
cd ..
cd Users
md %user1%
cd %user1%
md Downloads
md Desktop
md Documents
md Musics
cd ..
cd ..
cd etc
goto moresetup2

:moresetup2
echo =============��{==============
echo  1.�]�w�ϥΪ�
echo *2.�]�wroot�K�X
echo  3.�]�wOneOS�D���W��
echo  4.�ҥ�
echo  5.���s�Ұ�
echo ==============================
echo.
set /p rootpasswd=�г]�wroot�K�X: 
echo set root=%rootpasswd% >> info.bat
goto moresetup3

:moresetup3
cls
echo =============��{==============
echo  1.�]�w�ϥΪ�
echo  2.�]�wroot�K�X
echo *3.�]�wOneOS�D���W��
echo  4.�ҥ�
echo  5.���s�Ұ�
echo ==============================
echo.
set /p name=�г]�w�D���W��: 
echo set home=%name% >> info.bat
goto activation

:activation
cls
echo =============��{==============
echo  1.�]�w�ϥΪ�
echo  2.�]�wroot�K�X
echo  3.�]�wOneOS�D���W��
echo *4.�ҥ�
echo  6.��ܧ�s�q�D
echo  5.���s�Ұ�
echo ==============================
echo.
call infokey.bat
set /p activation=���~���_(�S���п�Jskip): 
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
Start ActivationErr.vbs
goto activation

:skip
set /p v=��ܪ���(Pro/Basic): 
echo set keys=���ҥ�OS�A%v%�� >> info.bat
echo set copyorno=�����~���O���� >> info.bat
goto reset

:activationedpro
echo set keys=�w�ҥ�OS�APro�� >> info.bat
echo pro > pro.bat
echo set copyorno=�����~�O���� >> info.bat
Start ActivationDone.vbs
goto reset

:activationedbasic
echo set keys=�w�ҥ�OS�ABasic�� >> info.bat
echo home > home.bat
echo set copyorno=�����~�O���� >> info.bat
Start ActivationDone.vbs
goto reset

:load
timeout /2 5 >nul 2>nul
call sakosv3.bat
goto start

:reset
cd ..\OneOS\System32
cd Drivers
echo set gpu=VGA��ø�ϥd > GPU.bat
cd ..
start Kernel32.bat
exit

::Boot�޾�::

:boot
color 0F
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo.     
echo.
echo.
timeout /t 3 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     .
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ..
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ...
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ....
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     .
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ..
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ...
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ....
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     .
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ..
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ...
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ....
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     .
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ..
echo.
echo.
timeout /t 1 >nul 2>nul
cls
echo.   
echo.    %logo%
echo.    %logoii%
echo.
echo.
echo     ...
echo.
echo.
timeout /t 1 >nul 2>nul
cls
timeout /t 3 >nul 2>nul
goto loginmenu

::�n�J�e��::

:loginmenu
cd ..\OneOS\System32
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
cls
echo.
echo.
echo.        ��ܨϥΪ�
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call %button% 7 5 %buttonc% "%user1%" 9 9 %buttonc% "User" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto login%errorlevel%

:login1
set lusr=%user1%
goto usrpasswd

:login2
set lusr=User
goto comandwc

:usrpasswd
cls
echo.
echo.
echo.
echo.
echo.       ��J %lusr%���K�X
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
echo.       ��J %lusr%���K�X
echo.
echo.       [�Юֹ�K�X�O�_���T]
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
goto loginmenu

::��s�ե�::

:installupdate
cd ..\..\etc
call info.bat
cd ..\OneOS\System32
cls
cd SoftwareUpdate
cd OS%channel%UpdateData
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
echo.                           �q�D: %osdata%
echo.                           OneOS����: %ver2%
echo ===========================================
echo :         :                               :
echo :         :               %date% :
echo :         :                               :
call Button 1 14 %buttonc% "Start" 1 1 %buttonc% "Logout" 1 5 %buttonc% "Restart" 1 9 %buttonc% "PowerOFF"  X _Var_Box _Var_Hover
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

::�}�l���::

:startmenu1
cls
title OneOS
if %themelod% == 07 (set buttonc=70) else (set buttonc=07)
color %themelod%
echo �}�l======================================
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         : 
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         : 
echo.                                         :
echo ==========================================
call %button% 0 2 %buttonc% "Help" 9 2 %buttonc% "PCinfo" 20 2 %buttonc% "Calc" 29 2 %buttonc% "Settings" 0 6 %buttonc% "Desktop" 12 6 %buttonc% "SExplorer" 26 6 %buttonc% "SGPUBoost-X" 0 10 %buttonc% "Command Mode" 17 10 %buttonc% " Time " 28 10 %buttonc% "Menu Down" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto start%errorlevel%

::�}�l���II::

:startmenuii
cls
color %themelod%
echo �}�l======================================
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         : 
echo.                                         :
echo.                                         :
echo.                                         :
echo.                                         : 
echo.                                         :
echo ==========================================
call %button% 0 2 %buttonc% "NotePad" 31 10 %buttonc% "MenuUp" X _Var_Box _Var_Hover
%getbutton% /M %_Var_Box% /H %_Var_Hover%
goto startii%errorlevel%

::�}�l���ާ@::

:start1
goto help

:start2
goto thispc

:start3
goto calc

:start4
goto cp

:start5
goto comand

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

::�ū�(���)::

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