@echo off
cd ..\..\etc
title SakuraOS啟用
echo 請在Sakura之國交付50K OWO給 @螺旋飛天中，請稍後
echo 也請支付50K OWO給 @Kiawm91
echo.
echo 購買完請將金鑰複製
echo.
goto type

:type
call infokey.bat
set /p key=金鑰(沒有請輸入skip): 
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
echo set keys=已啟用OS，Basic版 >> info.bat
echo home > home.bat
del pro.bat
cls
echo set copyorno=此產品是正版 >> info.bat
Start ActivationDone.vbs
pause
title OneOS


:activationedpro
echo set keys=已啟用OS，Pro版 >> info.bat
echo pro > pro.bat
del home.bat
cls
echo set copyorno=此產品是正版 >> info.bat
Start ActivationDone.vbs
pause
title OneOS
