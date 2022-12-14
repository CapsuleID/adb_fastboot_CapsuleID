@echo off
mode con:cols=80 lines=25
color 08
title adb_fastboot CapsuleID

cd %~dp0
echo.
echo  ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
cecho                             {0c}Call{#} {0e}Me{#} {0a}ADB{#} {0d}_{#} {0b}FASTBOOT{#}{\n}
echo.
cecho                                    {0f}Capsule{#}{0c}ID{#}{\n}
echo  ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
echo.
:Q1
echo(
set /p answer=Lakukan pemasangan adb_fastboot (y/n) ?   
 if /i {%ANSWER%}=={y} (goto Q2)
 if /i {%ANSWER%}=={n} (goto DRV)
echo(
echo Pilihan salah, harap ketikkan y atau n
goto Q1
:Q2
echo(
set /p answer=Lakukan pemasangan path (y/n) ?   
 if /i {%ANSWER%}=={y} (goto ADB_S)
 if /i {%ANSWER%}=={n} (goto ADB_U)
echo(
echo Pilihan salah, harap ketikkan y atau n
goto Q2
:ADB_U
echo(
echo Sedang menyalin dan memasang path ...
echo(
adb kill-server > nul 2>&1
set /a COUNT=0
if exist %WINDIR%\adb.exe del %WINDIR%\adb.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\AdbWinApi.dll del %WINDIR%\AdbWinApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\AdbWinUsbApi.dll del %WINDIR%\AdbWinUsbApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\dmtracedump.exe del %WINDIR%\dmtracedump.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\etc1tool.exe del %WINDIR%\etc1tool.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\fastboot.exe del %WINDIR%\fastboot.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\hprof-conv.exe del %WINDIR%\hprof-conv.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\libwinpthread-1.dll del %WINDIR%\libwinpthread-1.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\make_f2fs.exe del %WINDIR%\make_f2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\make_f2fs_casefold.exe del %WINDIR%\make_f2fs_casefold.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\mke2fs.conf del %WINDIR%\mke2fs.conf /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\mke2fs.exe del %WINDIR%\mke2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\source.properties del %WINDIR%\source.properties /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\sqlite3.exe del %WINDIR%\sqlite3.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
xcopy adb_fastboot_CapsuleID\adb.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\AdbWinApi.dll %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\AdbWinUsbApi.dll %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\dmtracedump.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\etc1tool.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\fastboot.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\hprof-conv.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\libwinpthread-1.dll %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\make_f2fs.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\make_f2fs_casefold.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\mke2fs.conf %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\mke2fs.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\source.properties %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\sqlite3.exe %USERPROFILE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
echo %COUNT% berkas tersalin.
:PATH_U
echo %PATH% > PATH.TMP
ver > nul
find "%USERPROFILE%\adb_fastboot_CapsuleID" PATH.TMP > nul 2>&1
if %ERRORLEVEL% LSS 1 goto DRV
ver | find "5.1" > nul 2>&1
if %ERRORLEVEL% LSS 1 xp\setx.exe PATH "%PATH%;%USERPROFILE%\adb_fastboot_CapsuleID" 2>>%USERPROFILE%\Desktop\CapsuleID.log && goto DRV
setx PATH "%PATH%;%USERPROFILE%\adb_fastboot_CapsuleID" 2>>%USERPROFILE%\Desktop\CapsuleID.log
goto DRV
:ADB_S
echo(
echo Sedang menyalin dan memasang path ...
echo(
ADB kill-server > nul 2>&1
set /a COUNT=0
if exist %WINDIR%\adb.exe del %WINDIR%\adb.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\AdbWinApi.dll del %WINDIR%\AdbWinApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\AdbWinUsbApi.dll del %WINDIR%\AdbWinUsbApi.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\dmtracedump.exe del %WINDIR%\dmtracedump.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\etc1tool.exe del %WINDIR%\etc1tool.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\fastboot.exe del %WINDIR%\fastboot.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\hprof-conv.exe del %WINDIR%\hprof-conv.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\libwinpthread-1.dll del %WINDIR%\libwinpthread-1.dll /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\make_f2fs.exe del %WINDIR%\make_f2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\make_f2fs_casefold.exe del %WINDIR%\make_f2fs_casefold.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\mke2fs.conf del %WINDIR%\mke2fs.conf /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\mke2fs.exe del %WINDIR%\mke2fs.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\source.properties del %WINDIR%\source.properties /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
if exist %WINDIR%\sqlite3.exe del %WINDIR%\sqlite3.exe /f /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log
xcopy adb_fastboot_CapsuleID\adb.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\AdbWinApi.dll %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\AdbWinUsbApi.dll %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\dmtracedump.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\etc1tool.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\fastboot.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\hprof-conv.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\libwinpthread-1.dll %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\make_f2fs.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\make_f2fs_casefold.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\mke2fs.conf %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\mke2fs.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\source.properties %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
xcopy adb_fastboot_CapsuleID\sqlite3.exe %SYSTEMDRIVE%\adb_fastboot_CapsuleID\ /y /q 1>nul 2>>%USERPROFILE%\Desktop\CapsuleID.log && set /a COUNT=%COUNT%+1
echo %COUNT% berkas tersalin.
:PATH_S
echo %PATH% > PATH.TMP
ver > nul
find "%SYSTEMDRIVE%\adb_fastboot_CapsuleID" PATH.TMP > nul 2>&1
if %ERRORLEVEL% LSS 1 goto DRV
ver | find "5.1" > nul 2>&1
if %ERRORLEVEL% LSS 1 xp\setx.exe PATH "%PATH%;%SYSTEMDRIVE%\adb_fastboot_CapsuleID" /m 2>>%USERPROFILE%\Desktop\CapsuleID.log && goto DRV
setx PATH "%PATH%;%SYSTEMDRIVE%\adb_fastboot_CapsuleID" /m 2>>%USERPROFILE%\Desktop\CapsuleID.log
:DRV
del PATH.TMP
echo(
set /p answer=Lakukan pemasangan ADB Driver (y/n) ?   
 if /i {%ANSWER%}=={y} (goto DRIVER)
 if /i {%ANSWER%}=={n} (goto FINISH)
echo Pilihan salah, harap ketikkan y atau n
goto DRV
:DRIVER
if defined programfiles(x86) goto x64
:x86
echo(
echo Menyiapkan driver 32-bit ...
echo.
echo Lanjutkan ke pemasangan driver
ping localhost -n 1 >nul
start /wait driver\DPInst_x86 /f 2>>%USERPROFILE%\Desktop\CapsuleID.log
goto FINISH
:x64
echo(
echo Menyiapkan driver 64-bit ...
echo.
echo Lanjutkan ke pemasangan driver
ping localhost -n 1 >nul
start /wait driver\DPInst_x64 /f 2>>%USERPROFILE%\Desktop\CapsuleID.log
cls
:FINISH
echo(
echo.
echo  ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
cecho                                    {0a}Yohaa ...!{#}{\n}
echo  ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
echo.
call :LOG %USERPROFILE%\Desktop\CapsuleID.log
:LOG
if %~z1 == 0 del %USERPROFILE%\Desktop\CapsuleID.log /f /q > nul 2>&1
ping localhost -n 2 >nul
pause
exit