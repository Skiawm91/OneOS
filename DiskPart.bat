@echo off
color 0a
cd ..\..\etc
call info.bat
cd ..
cd ..
title OneOS�Ϻг]�w�u��

:enter
set /p passwd=�п�JRoot�K�X: 
if %passwd% == %root% goto help1
echo �K�X���~�I���ˬd�K�X
goto enter

:help1
goto help

:help
cls
echo.
echo =======���O�u��=======
echo.
echo     help �եX���ؿ�
echo     rm �R���@�ӺϺ�
echo     md �s�W�@�ӺϺа�
echo     mtg �ഫ�Ϻе{��
echo.
echo =====================
echo.
goto command

:command
set /p command=���O: 
if %command% == help goto h
if %command% == rm goto rm
if %command% == md goto md
if %command% == mtg goto mtg
goto help

:h
goto help

:rm
set /p rm=�A�n�R�����ϺЦW��: 
timeout /t 3 >nul 2>nul
del %rm%
rmdir %rm%
echo DiskPart: �ؼоާ@�����I
goto exit

:md
set /p md=�A�n�s�W���ϺЦW��: 
timeout /t 3 >nul 2>nul
mkdir %md%
echo DiskPart: �ؼоާ@�����I
goto exit

:exit
timeout /t 2 >nul 2>nul
goto h

:errrm
echo DiskPart: �ؼоާ@���ѡI
goto rm

:errmd
echo DiskPart: �ؼоާ@���ѡI
goto md

:mtg
cls
title DiskPart MtG Mode
echo verify = ���ҺϺ�
echo convert = �ഫ�Ϻ�
echo exit = �h�X
echo.
goto mtg2

:mtg2
set /p mtg=MBR2GPT: 
if %mtg% == verify goto mtgv
if %mtg% == convert goto mtgc
if %mtg% == help goto mtg
goto mtg

:mtgv
echo MBR2GPT: ���ҺϺФ�...
timeout /t 2 >nul 2>nul
echo MBR2GPT: ���ҺϺлݭn�������ϬO�_�s�b��GPT
echo MBR2GPT: �o�N�ݭn�@�Ǯɶ�...�еy��
timeout /t 5 >nul 2>nul
cd EFIStorage
if NOT EXIST BootMGR.bat (goto vok) else (goto verr)

:verr
cd ..
cd SakuraOSv2
echo MBR2GPT: ���ҥ��ѡI
echo MBR2GPT: �ϺФ��bMBR�榡��...
echo MBR2GPT: ���ݭn�ഫ�I
echo.
pause
goto mtg

:vok
cd Oneos
cls
echo MBR2GPT: ���Ҧ��\�I
echo.
pause
goto mtg

:mtgc
echo MBR2GPT: ���ҺϺФ�...
timeout /t 2 >nul 2>nul
echo MBR2GPT: ���ҺϺлݭn�������ϬO�_�s�b��GPT
echo MBR2GPT: �o�N�ݭn�@�Ǯɶ�...�еy��
timeout /t 5 >nul 2>nul
cd EFIStorage
if NOT EXIST BootMGR.bat (goto cok) else (goto verr)

:cok
cls
echo MBR2GPT: ���Ҧ��\�I�}�l�ഫ
echo  MBR2GPT:  �R���±Ұʤ��
timeout /t 4 >nul 2>nul
echo MBR2GPT: �ƻs�Ҧ�����s�Ҧ�
xcopy SakuraOSv2 C:\SakuraPC\Systems\GPT\
timeout /t 3 >nul 2>nul
echo MBR2GPT: ���b�ЫطsBoot�ɮ�
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
echo MBR2GPT: �ഫ�����I����30��᭫�s�}���I
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