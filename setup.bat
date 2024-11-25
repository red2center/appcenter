@echo off
set ZIP_URL=https://github.com/red2center/appcenter/raw/refs/heads/main/HelloRedAppCenter.zip
set TARGET_DIR=C:\HelloRed\AppCenter
set ZIP_FILE=%TARGET_DIR%\HelloRedAppCenter.zip
set EXE_PATH=%TARGET_DIR%\HelloRedAppCenter.exe
set START_MENU_SHORTCUT="%APPDATA%\Microsoft\Windows\Start Menu\Programs\HelloRedAppCenter.lnk"
set DESKTOP_SHORTCUT="%USERPROFILE%\Desktop\HelloRedAppCenter.lnk"
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"
echo Indiriliyor...
powershell -Command "Invoke-WebRequest -Uri %ZIP_URL% -OutFile %ZIP_FILE%"
echo Cikartiliyor...
powershell -Command "Expand-Archive -Path '%ZIP_FILE%' -DestinationPath '%TARGET_DIR%'"
echo Kisayol olusturuluyor - Baslat Menusu...
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%START_MENU_SHORTCUT%');$s.TargetPath='%EXE_PATH%';$s.Save()"
echo Kisayol olusturuluyor - Masaustunde...
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%DESKTOP_SHORTCUT%');$s.TargetPath='%EXE_PATH%';$s.Save()"
del "%ZIP_FILE%"
echo Islem tamamlandi.
