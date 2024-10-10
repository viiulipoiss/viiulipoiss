@echo off
:menu
echo.
echo 1) Notification
echo 2) Message Box
set /p input=">>"
if %input% EQU 1 goto noti
if %input% EQU 2 goto msgbox

:msgbox
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows', 'Upgrading from Windows 11 to Windows 12...', 'OK', [System.Windows.Forms.ToolTipIcon]::None)}"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows', 'Upgrading from Windows 11 to Windows 12...', 'OK', [System.Windows.Forms.ToolTipIcon]::None)}"
set /p OUT==<%TEMP%\out.tmp
if /p %OUT%==Yes (echo Clicked Yes)
cls
goto menu


:noti
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Error; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows Defender', '8 Trojans have been detected!.', [System.Windows.Forms.ToolTipIcon]::None)}"
cls
goto menu