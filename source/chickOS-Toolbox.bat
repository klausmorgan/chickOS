@echo off
fltmc >nul 2>&1 || (
    echo :: Yonetici Yetkileri Kontrol Ediliyor
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo :: Yonetici Olarak Calistirip Tekrar Deneyin
        pause & exit 1
    )
    exit 0
)

@echo off
title chickOS Toolbox
mode con cols=65 lines=35
setlocal EnableExtensions DisableDelayedExpansion

:menu

cls
color F
echo ================================================================
echo =              GITMEK ISTEDIGINIZ MENUYU SECIN                 =
echo ================================================================
echo =   1- Ayarlar                                                 =
echo =   2- Hizmetler                                               =
echo =   3- Tarayicilar                                             =
echo =   4- Programlar                                              =
echo =   5- Oyun Yazilimlari                                        =
echo =   6- Sistem Bilgi                                            =
echo =   7- chickOS Discord Davet Linki                             =
echo =   8- Guvenli Modda Yeniden Baslat                            =
echo =   x- Kapat                                                   =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto ayarlar
if "%choice%"=="2" goto hizmetler
if "%choice%"=="3" goto tarayicilar
if "%choice%"=="4" goto programlar
if "%choice%"=="5" goto oyundanoncekur
if "%choice%"=="6" goto systeminfo
if "%choice%"=="7" goto chickosurl
if "%choice%"=="8" goto safemode
if "%choice%"=="x" goto :eof
if "%choice%"=="X" goto :eof

goto menu

REM ################################################################################################################

:ayarlar

cls
color B
echo ================================================================
echo =                          AYARLAR                             =
echo ================================================================
echo =   1-  Eski Sag Tik Menusu (Windows 11)                       =
echo =   2-  Yeni Sag Tik Menusu (Windows 11)                       =
echo =   3-  Update Otomatik Surucu Kurulumu Aktif Et               =
echo =   4-  Gorsel Efektler Paneli                                 =
echo =   5-  Windows Update Kapat (Store Calismaz)                  =
echo =   6-  Windows Update Aktif Et                                =
echo =   7-  Dosya Gezgininden Galeriyi Kaldir (Windows 11)         =
echo =   8-  Dosya Gezgininden Giris Bolumunu Kaldir (Windows 11)   =
echo =   9-  Sag Tik Menusune Sahipligi Al Ekle                     =
echo =  10-  Sag Tik Menusunden Sahipligi Al Kaldir                 =
echo =  11-  Cekirdek Yalitim Bellek Butunlugu Kapat                =
echo =  12-  Spectre-Meltdown Mitigations Kapat                     =
echo =  13-  Spectre-Meltdown Mitigations Ac (Default)              =
echo =   x-  Geri                                                   =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto old_right_click_menu
if "%choice%"=="2" goto new_right_click_menu
if "%choice%"=="3" goto updatedriver
if "%choice%"=="4" goto efektler
if "%choice%"=="5" goto wupdateoff
if "%choice%"=="6" goto wupdateon
if "%choice%"=="7" goto removegaleri
if "%choice%"=="8" goto removehome
if "%choice%"=="9" goto sahipligial
if "%choice%"=="10" goto almasahipligi
if "%choice%"=="11" goto coreisolation
if "%choice%"=="12" goto mitigationsoff
if "%choice%"=="13" goto mitigationson
if "%choice%"=="x" goto menu
if "%choice%"=="X" goto menu

goto ayarlar

REM ################################################################################################################

:hizmetler

cls
color 0E
echo ================================================================
echo =                          HIZMETLER                           =
echo ================================================================
echo =    1- Gereksiz Servis Kapat                                  =
echo =    2- Gereksiz Servis Ac (Default)                           =
echo ================================================================
echo =    3- Enable Bluetooth                                       =
echo =    4- Disable Bluetooth (Default)                            =
echo ================================================================
echo =    5- Enable Hyper-V                                         =
echo =    6- Disable Hyper-V (Default)                              =
echo ================================================================
echo =    7- Enable SysMain (SSD Yoksa Aktif Et)                    =
echo =    8- Disable SysMain (Default)                              =
echo ================================================================
echo =   10- Enable Wi-Fi (Default)                                 =
echo =   11- Disable Wi-Fi                                          =
echo ================================================================
echo =   12- Enable Xbox                                            =
echo =   13- Disable Xbox (Default)                                 =
echo ================================================================
echo =   14- Enable Printer                                         =
echo =   15- Disable Printer (Default)                              =
echo ================================================================
echo =   16- Ekstra Hizmetler Ac (Default)                          =
echo =   17- Ekstra Hizmetler Kapat                                 =
echo =   Toolbox bazi indirmeler icin bu hizmetlere ihtiyac duyar   =
echo =   Ayrica Gece isigi, Bluetooth, Yazici, Pano, Pin            =
echo =   Bildirimler, Store, Ag Dosya Paylasimi, Wi-Fi,             =
echo =   Ekran Goruntusu ve Olay gunlugu lazimsa kapatmayin         =
echo ================================================================
echo =    x- Geri                                                   = 
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto safetodisable
if "%choice%"=="2" goto safetoenable
if "%choice%"=="3" goto bluetoothon
if "%choice%"=="4" goto bluetoothoff
if "%choice%"=="5" goto hyperon
if "%choice%"=="6" goto hyperoff
if "%choice%"=="7" goto sysmainon
if "%choice%"=="8" goto sysmainoff
if "%choice%"=="10" goto wifion
if "%choice%"=="11" goto wifioff
if "%choice%"=="12" goto xboxon
if "%choice%"=="13" goto xboxoff
if "%choice%"=="14" goto printeron
if "%choice%"=="15" goto printeroff
if "%choice%"=="16" goto onermiyorumac
if "%choice%"=="17" goto onermiyorumkapat
if "%choice%"=="x" goto menu
if "%choice%"=="X" goto menu

goto hizmetler

REM ################################################################################################################

:tarayicilar

cls
color 04
echo ================================================================
echo =                         TARAYICILAR                          =
echo ================================================================
echo =   1- Google Chrome                                           =
echo =   2- Mozilla Firefox                                         =
echo =   3- Brave                                                   =
echo =   4- Microsoft Edge                                          =
echo =   5- Opera                                                   =
echo =   6- Opera GX                                                =
echo =   x- Geri                                                    =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto chrome
if "%choice%"=="2" goto firefox
if "%choice%"=="3" goto brave
if "%choice%"=="4" goto edge
if "%choice%"=="5" goto opera
if "%choice%"=="6" goto operagx
if "%choice%"=="x" goto menu
if "%choice%"=="X" goto menu

goto tarayicilar

REM ################################################################################################################

:programlar

cls
color 03
echo ================================================================
echo =                         PROGRAMLAR                           =
echo ================================================================
echo =   1- Microsoft .NET Runtime                                  =
echo =   2- Adobe Acrobat Reader DC                                 =
echo =   3- 7Zip                                                    =
echo =   4- Teamviewer                                              =
echo =   5- Google Drive                                            =
echo =   6- Discord                                                 =
echo =   7- VLC Media Player                                        =
echo =   8- qBitTorrent                                             =
echo =   9- Notepad++                                               =
echo =  10- HWiNFO                                                  =
echo =  11- Free Download Manager                                   =
echo =  12- CrystalDiskMark                                         =
echo =  13- CrystalDiskInfo                                         =
echo =  14- Java                                                    =
echo =  15- Malwarebytes                                            =
echo =  16- Easy Context Menu                                       =
echo =  17- Audacity                                                =
echo =  18- MusicBee                                                =
echo =  19- Visual Studio Code                                      =
echo =  20- VirtualBox                                              =
echo =   x- Geri                                                    =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto dotnet
if "%choice%"=="2" goto adobereader
if "%choice%"=="3" goto 7zip
if "%choice%"=="4" goto teamviewer
if "%choice%"=="5" goto googledrive
if "%choice%"=="6" goto discord
if "%choice%"=="7" goto vlcmp
if "%choice%"=="8" goto qbittorrent
if "%choice%"=="9" goto notepad
if "%choice%"=="10" goto hwinfo
if "%choice%"=="11" goto freedownloadmanager
if "%choice%"=="12" goto crystaldiskmark
if "%choice%"=="13" goto crystaldiskinfo
if "%choice%"=="14" goto java
if "%choice%"=="15" goto malwarebytes
if "%choice%"=="16" goto easycontext
if "%choice%"=="17" goto audacity
if "%choice%"=="18" goto musicbee
if "%choice%"=="19" goto vscode
if "%choice%"=="20" goto virtualbox
if "%choice%"=="x" goto menu
if "%choice%"=="X" goto menu

goto programlar

REM ################################################################################################################

:oyundanoncekur

cls
color 04
echo ================================================================
echo =                      OYUN YAZILIMLARI                        =
echo ================================================================
echo =   1- Visual C++ Redistributable                              =
echo =   2- DirectX                                                 =
echo =   3- Steam                                                   =
echo =   4- Epic Games                                              =
echo =   5- GOG Galaxy                                              =
echo =   6- Amazon Games                                            =
echo =   7- EA Desktop                                              =
echo =   8- Ubisoft Connect                                         =
echo =   x- Geri                                                    =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto cppredist
if "%choice%"=="2" goto directx
if "%choice%"=="3" goto steam
if "%choice%"=="4" goto epicgames
if "%choice%"=="5" goto goggalaxy
if "%choice%"=="6" goto amazon
if "%choice%"=="7" goto eadesktop
if "%choice%"=="8" goto ubisoft
if "%choice%"=="x" goto menu
if "%choice%"=="X" goto menu

goto oyundanoncekur

REM ################################################################################################################

:systeminfo

@echo off
cls
color A
echo ================================================================
echo =                        SISTEM BILGI                          =
echo ================================================================
for /f "delims=" %%I in ('powershell -command "Get-WmiObject -Class Win32_Processor | Select-Object -ExpandProperty Name"') do echo CPU: %%I
echo ================================================================
for /f "delims=" %%I in ('powershell -command "$ram = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB; '{0:N2}' -f $ram"') do echo RAM: %%I GB
echo ================================================================
for /f "delims=" %%I in ('powershell -command "$gpu = Get-WmiObject -Class Win32_VideoController; 'GPU: ' + $gpu.Caption + ', Driver Version: ' + $gpu.DriverVersion"') do echo %%I
echo ================================================================
for /f "delims=" %%I in ('powershell -command "(Get-WmiObject -Class Win32_BaseBoard).Product"') do echo Anakart: %%I
echo ================================================================
for /f "delims=" %%I in ('powershell -command "$storage = Get-CimInstance Win32_DiskDrive | ForEach-Object { 'Disk' + $_.DeviceID.Replace('\\.\PHYSICALDRIVE', '') + ': ' + '{0:N2}' -f ($_.Size / 1GB) + ' GB' }; $storage"') do echo %%I
echo ================================================================
for /f "tokens=* delims=. " %%i in ('ver') do set VERSION=%%i
set COMPUTER_NAME=%COMPUTERNAME%
echo %COMPUTER_NAME%
echo ================================================================
echo %VERSION%
echo ================================================================
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:safemode

@echo off
cls
color A
echo ================================================================
echo =                          SAFE MODE                           =
echo ================================================================
echo =  1- Guvenli Mod                                              =
echo =  2- Guvenli Mod + Internet                                   =
echo =  3- Normal Boot                                              =
echo =  x- Geri                                                     =
echo ================================================================

set /p choice=SAYI GIRIN:

if "%choice%"=="1" goto guvenlimod
if "%choice%"=="2" goto guvenlimodinternet
if "%choice%"=="3" goto normalboot
if "%choice%"=="X" goto menu
if "%choice%"=="x" goto menu

goto safemode

:guvenlimod

bcdedit /set {default} safeboot minimal
goto reboot

:guvenlimodinternet

bcdedit /set {default} safeboot network
goto reboot

:normalboot

bcdedit /deletevalue {default} safeboot
goto reboot

:reboot

shutdown -r -f -t 4
pause >nul

REM ################################################################################################################

:old_right_click_menu

@echo off
cls
color 0A
echo Kayit Defteri Girdisi Ekleniyor...
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
taskkill /f /im explorer.exe
explorer.exe
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:new_right_click_menu

@echo off
cls
color 0A
echo Kayit Defteri Girdisi Kaldiriliyor...
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f
taskkill /f /im explorer.exe
explorer.exe
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:updatedriver

@echo off
cls
color 0A
echo Kayit Defteri Girdisi Duzenleniyor...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 1 /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:efektler

@echo off
cls
color 0A
echo Gorsel Efektler (Performans) Paneli Aciliyor...
start %windir%\system32\SystemPropertiesPerformance.exe
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:wupdateoff

@echo off
cls
color 0A
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'UsoSvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" zaten devre disi."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName kapatmaya gerek yok zaten kapali."^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo ===============================================
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wuauserv'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" zaten devre disi."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName kapatmaya gerek yok zaten kapali."^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo ===============================================
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceQuery = 'DoSvc'; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceQuery -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service query `"^""$serviceQuery`"^"" did not yield any results, no need to disable it."^""; Exit 0; }; $serviceName = $service.Name; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, trying to stop it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if service info is not found in registry #>; $registryKey = "^""HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"^""; if(!(Test-Path $registryKey)) {; Write-Host "^""`"^""$registryKey`"^"" is not found in registry, cannot enable it."^""; Exit 0; }; <# -- 4. Skip if already disabled #>; if( $(Get-ItemProperty -Path "^""$registryKey"^"").Start -eq 4) {; Write-Host "^""`"^""$serviceName`"^"" kapatmaya gerek yok zaten kapali."^""; Exit 0; }; <# -- 5. Disable service #>; try {; Set-ItemProperty $registryKey -Name Start -Value 4 -Force -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo ===============================================
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:wupdateon

@echo off
cls
color 0A
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'UsoSvc'; $defaultStartupMode = 'Automatic'; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Warning "^""Service `"^""$serviceName`"^"" could not be not found, cannot enable it."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") {; Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else {; try {; Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, may require restarting your computer."^""; } catch {; Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') {; if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try {; Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" zaten calisiyor."^""; }; }"
echo ===============================================
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wuauserv'; $defaultStartupMode = 'Manual'; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Warning "^""Service `"^""$serviceName`"^"" could not be not found, cannot enable it."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") {; Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else {; try {; Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, may require restarting your computer."^""; } catch {; Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') {; if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try {; Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" zaten calisiyor."^""; }; }"
echo ===============================================
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceQuery = 'DoSvc'; $defaultStartupMode = 'Automatic'; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceQuery -ErrorAction SilentlyContinue; if(!$service) {; Write-Warning "^""Service query `"^""$serviceQuery`"^"" did not yield and results, cannot enable it."^""; Exit 1; }; $serviceName = $service.Name; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 2. Skip if service info is not found in registry #>; $registryKey = "^""HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"^""; if(!(Test-Path $registryKey)) {; Write-Warning "^""`"^""$registryKey`"^"" is not found in registry, cannot enable it."^""; Exit 1; }; <# -- 3. Enable if not already enabled #>; $defaultStartupRegValue = if ($defaultStartupMode -eq 'Boot') { '0' } elseif($defaultStartupMode -eq 'System') { '1' } elseif($defaultStartupMode -eq 'Automatic') { '2' } elseif($defaultStartupMode -eq 'Manual') { '3' } else { throw "^""Unknown start mode: $defaultStartupMode"^""}; if( $(Get-ItemProperty -Path "^""$registryKey"^"").Start -eq $defaultStartupRegValue) {; Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start."^""; } else {; try {; Set-ItemProperty $registryKey -Name Start -Value $defaultStartupRegValue -Force; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, may require restarting your computer."^""; } catch {; Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') {; if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is not running, trying to start it."^""; try {; Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
echo ===============================================
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:removegaleri

@echo off
cls
color 0A
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:removehome

@echo off
cls
color 0A
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:sahipligial

@echo off
cls
color 0A
@echo off
reg add "HKEY_CLASSES_ROOT\*\shell\runas" /ve /d "Sahipligi Al" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runas\command" /ve /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas" /ve /d "Sahipligi Al" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\runas\command" /ve /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:almasahipligi

@echo off
cls
color 0A
@echo off
reg delete "HKEY_CLASSES_ROOT\*\shell\runas" /f
reg delete "HKEY_CLASSES_ROOT\Directory\shell\runas" /f
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:coreisolation

@echo off
cls
color 0A
@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "WasEnabledBy" /t REG_DWORD /d 0 /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:mitigationsoff

@echo off
cls
color 0A
@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

:mitigationson

@echo off
cls
color 0A
@echo off
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f
echo Sistemi Yeniden Baslatiniz...
echo Menuye donmek icin bir tusa basin.
pause >nul
goto ayarlar

REM ################################################################################################################

:chrome

@echo off
cls
color 0A
set installerURL=https://dl.google.com/chrome/install/latest/chrome_installer.exe
set installerPath="%TEMP%\chrome_installer.exe"
echo Google Chrome indiriliyor...
bitsadmin.exe /transfer "ChromeInstaller" %installerURL% %installerPath%
echo Google Chrome yukleniyor...
start /wait "" %installerPath% /silent /install
if %errorlevel% equ 0 (
    echo Google Chrome basariyla yuklendi.
) else (
    echo Error: Google Chrome yuklenemedi.
)
echo indirme kalintilari temizleniyor...
del %installerPath%
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:brave

@echo off
cls
color 0A
set installerURL=https://github.com/brave/brave-browser/releases/latest/download/BraveBrowserStandaloneSilentSetup.exe
set installerPath="%TEMP%\BraveBrowserStandaloneSilentSetup.exe"
echo Brave tarayicisi indiriliyor...
bitsadmin.exe /transfer "BraveInstaller" %installerURL% %installerPath%
echo Brave tarayicisi kuruluyor...
start /wait "" %installerPath%
if %errorlevel% equ 0 (
    echo Brave tarayicisi basariyla kuruldu.
) else (
    echo Error: Brave installation failed.
)
echo indirme kalintilari temizleniyor...
del %installerPath%
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:firefox

@echo off
cls
color 0A
set installerURL=https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=tr
set installerPath="%TEMP%\firefox_installer.exe"
echo Mozilla Firefox indiriliyor...
bitsadmin.exe /transfer "FirefoxInstaller" %installerURL% %installerPath%
echo Mozilla Firefox yukleniyor...
start /wait "" %installerPath% -ms
if %errorlevel% equ 0 (
    echo Mozilla Firefox yuklendi.
) else (
    echo Error: Mozilla Firefox installation failed.
)
echo indirme kalintilari temizleniyor...
del %installerPath%
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:opera

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install opera -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:operagx

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install opera-gx -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

:edge

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install microsoft-edge -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

REM ################################################################################################################

:cppredist

@echo off
cls
color 0A
set installerURL=https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe
set installerPath="%TEMP%\VisualCppRedist_AIO_x86_x64.exe"
echo Visual C++ Redistributable indiriliyor...
bitsadmin.exe /transfer "VisualCppRedist" %installerURL% %installerPath%
echo Visual C++ Redistributable yukleniyor...
start /wait "" %installerPath%
echo indirme kalintilari temizleniyor...
del %installerPath%
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:directx

@echo off
cls
color 0A
set installerURL=https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe
set installerPath="%TEMP%\dxwebsetup.exe"
echo DirectX indiriliyor...
bitsadmin.exe /transfer "DirectX" %installerURL% %installerPath%
echo DirectX yukleniyor...
start /wait "" %installerPath%
echo indirme kalintilari temizleniyor...
del %installerPath%
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:steam

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install steam -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:epicgames

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install epicgameslauncher -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:goggalaxy

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install goggalaxy -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:amazon

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install amazongames -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:eadesktop

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install ea-app -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

:ubisoft

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install ubisoft-connect -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto oyundanoncekur

REM ################################################################################################################

:dotnet

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install dotnet-runtime -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:adobereader

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install adobereader -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:java

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install jre8 -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:teamviewer

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install teamviewer -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:googledrive

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install googledrive -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:discord

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install discord -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:malwarebytes

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install malwarebytes -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:7zip

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install 7zip -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:crystaldiskinfo

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install crystaldiskinfo -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:crystaldiskmark

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install crystaldiskmark -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:freedownloadmanager

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install freedownloadmanager -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:hwinfo

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install hwinfo.install -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:notepad

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install notepadplusplus -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:qbittorrent

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install qbittorrent -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:vlcmp

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install vlc -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:easycontext

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install ecm -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:audacity

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install audacity -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:musicbee

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install musicbee -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:vscode

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install vscode -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

:virtualbox

@echo off
cls
color 0A
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install virtualbox -y
echo Menuye donmek icin bir tusa basin.
pause >nul
goto programlar

REM ################################################################################################################

:safetodisable

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LxpSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetSetupSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RmSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TieringEngineService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:safetoenable

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LxpSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetSetupSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RmSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TieringEngineService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:bluetoothon

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d 3 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:bluetoothoff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:hyperon

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicheartbeat" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\hns" /v "Start" /t REG_DWORD /d 3 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:hyperoff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicheartbeat" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\hns" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:sysmainon

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:sysmainoff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:wifion

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:wifioff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:xboxon

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:xboxoff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:printeron

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:printeroff

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:onermiyorumkapat

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NPSMSvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d 4 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:onermiyorumac

@echo off
cls
color 0A
echo Hizmetler ayarlaniyor...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NPSMSvc" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d 2 /f
echo Hizmetler basariyla ayarlandi.
echo Sistemi yeniden baslatiniz.
echo Menuye donmek icin bir tusa basin.
pause >nul
goto hizmetler

:chickosurl

@echo off
cls
color 0A
echo Varsayilan tarayicinizdan chickOS discord daveti aciliyor...
start "" "https://discord.gg/gayZTErQzM"
echo Menuye donmek icin bir tusa basin.
pause >nul
goto menu

endlocal
