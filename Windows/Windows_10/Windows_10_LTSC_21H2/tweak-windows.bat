if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask"
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /disable /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /disable /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
powercfg /SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /change monitor-timeout-dc 0
powercfg /change standby-timeout-dc 0
powercfg /change hibernate-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change standby-timeout-ac 0
powercfg /change hibernate-timeout-ac 0
powercfg /SETDCVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg /SETACVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg /hibernate off
bcdedit /deletevalue useplatformclock
bcdedit /set {current} quietboot Yes
call activation\win-activate.bat
reg import registry-tweak.reg
taskkill /f /im explorer.exe & start explorer.exe