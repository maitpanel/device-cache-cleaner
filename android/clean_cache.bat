@echo off
setlocal
REM ============================================================
REM Android Safe Cache Cleaner (via ADB - no root needed)
REM Trims ALL apps cache safely. Android regenerates cache.
REM No personal data, photos, or apps are deleted.
REM ============================================================

echo ==== Android Safe Cache Cleaner ====
echo.

REM --- Check if ADB is available ---
where adb >nul 2>&1
if errorlevel 1 (
    echo [ERROR] ADB not found. Please install Android Platform Tools
    echo and add it to your PATH, then try again.
    echo.
    pause
    exit /b 1
)

echo Make sure: USB Debugging is ON and phone is connected.
echo.

REM --- Check if a device is connected ---
adb get-state 1>nul 2>&1
if errorlevel 1 (
    echo [ERROR] No device detected.
    echo Connect your phone, enable USB Debugging, and allow the prompt.
    echo.
    adb devices
    pause
    exit /b 1
)

echo Connected devices:
adb devices
echo.

echo Trimming cache for ALL apps (this is safe)...
adb shell pm trim-caches 9999999999
echo.

echo ==== Done! All app caches trimmed safely. ====
pause
endlocal
