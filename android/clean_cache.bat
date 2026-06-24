@echo off
REM ============================================================
REM  Android Safe Cache Cleaner (via ADB - no root needed)
REM  Trims ALL apps cache safely. Android regenerates cache.
REM  No personal data, photos, or apps are deleted.
REM ============================================================
echo ==== Android Safe Cache Cleaner ====
echo.
echo Make sure: USB Debugging is ON and phone is connected.
echo.
adb devices
echo.
echo Trimming cache for ALL apps (this is safe)...
adb shell pm trim-caches 999999999999
echo.
echo ==== Done! All app caches trimmed safely. ====
pause
