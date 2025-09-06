@echo off
title Skyrim SE Data Cleanup
echo ==========================
echo   Skyrim SE Cleanup Tool
echo ==========================
echo.

:: =========================
:: Constants
:: =========================
set "STEAMEXE=C:\Program Files (x86)\Steam\steam.exe"
set "INSTALLDIR=C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition"
set "SAVEDIR=%USERPROFILE%\Documents\My Games\Skyrim Special Edition"
set "APPDATADIR=%USERPROFILE%\AppData\Local\Skyrim Special Edition"

:: =========================
:: Ask for Steam path
:: =========================
echo Default Steam path: "%STEAMEXE%"
set /p USERINPUT=Press Enter to accept, or paste a different steam.exe path: 
if not "%USERINPUT%"=="" set "STEAMEXE=%USERINPUT%"

:: =========================
:: 0 - Attempt Steam uninstall
:: =========================
echo.
echo Attempting Steam uninstall for Skyrim SE (if installed)...
if exist "%STEAMEXE%" (
    echo Launching Steam uninstall...
    "%STEAMEXE%" "steam://uninstall/489830" 2>nul
    echo Note: If Skyrim SE is not installed, Steam may show an error. Continuing cleanup...
    timeout /t 3 >nul
) else (
    echo Steam executable not found at: "%STEAMEXE%"
    echo Skipping Steam uninstall. Continuing cleanup...
    timeout /t 3 >nul
)

:: =========================
:: 1 - Delete leftover installation files
:: =========================
echo.
echo Deleting SSE installation files ("%INSTALLDIR%")...
if exist "%INSTALLDIR%" (
    rmdir /s /q "%INSTALLDIR%"
    echo Deleted: "%INSTALLDIR%"
) else (
    echo Folder not found: "%INSTALLDIR%"
)
timeout /t 1 >nul

:: =========================
:: 2 - Delete user saves and configs
:: =========================
echo.
echo Deleting SSE user data ("%SAVEDIR%")...
if exist "%SAVEDIR%" (
    rmdir /s /q "%SAVEDIR%"
    echo Deleted: "%SAVEDIR%"
) else (
    echo Folder not found: "%SAVEDIR%"
)
timeout /t 1 >nul

:: =========================
:: 3 - Delete from AppData
:: =========================
echo.
echo Deleting SSE AppData folder ("%APPDATADIR%")...
if exist "%APPDATADIR%" (
    rmdir /s /q "%APPDATADIR%"
    echo Deleted: "%APPDATADIR%"
) else (
    echo Folder not found: "%APPDATADIR%"
)
timeout /t 1 >nul

:: =========================
:: Finish
:: =========================
echo.
echo ========================================
echo Cleanup complete. Press Enter to exit.
set /p dummy=
