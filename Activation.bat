@echo off
cd ..\..\etc
title SakuraOS�ҥ�
echo �ЦbSakura�����I50K OWO�� @���ۭ��Ѥ��A�еy��
echo �]�Ф�I50K OWO�� @Kiawm91
echo.
echo �ʶR���бN���_�ƻs
echo.
goto type

:type
call infokey.bat
set /p key=���_(�S���п�Jskip): 
if %key% == %key1% goto activationedbasic
if %key% == %key2% goto activationedbasic
if %key% == %key3% goto activationedbasic
if %key% == %key4% goto activationedbasic
if %key% == %key5% goto activationedbasic
if %key% == %key6% goto activationedpro
if %key% == %key7% goto activationedpro
if %key% == %key8% goto activationedpro
if %key% == %key9% goto activationedpro
if %key% == %key10% goto activationedpro
if %key% == skip goto skip
Start ActivationErr.vbs
goto type

:skip
pause
exit

:activationedbasic
echo set keys=�w�ҥ�OS�ABasic�� >> info.bat
echo home > home.bat
del pro.bat
cls
echo set copyorno=�����~�O���� >> info.bat
Start ActivationDone.vbs
pause
title OneOS


:activationedpro
echo set keys=�w�ҥ�OS�APro�� >> info.bat
echo pro > pro.bat
del home.bat
cls
echo set copyorno=�����~�O���� >> info.bat
Start ActivationDone.vbs
pause
title OneOS
