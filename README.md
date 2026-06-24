# Device Cache Cleaner

Safe, no-harm cache cleaning tools for Windows, Android, and iOS.
These tools remove only temporary / cache files that the system rebuilds
automatically. No personal data, documents, photos, or apps are deleted.

## Important honesty note

There is NO single phone app that can clear all other apps cache in one tap.
Android (since Android 6) blocks this permission for normal apps; the only
safe way without root is via ADB from a PC (included here). iOS sandbox
blocks all apps from touching other apps data, so only manual steps work.
This repo therefore uses the official, safe method for each platform.

## Windows  (file: windows/CacheCleaner.ps1)

Download the file, then right-click CacheCleaner.ps1 and choose
"Run with PowerShell". If it is blocked, open PowerShell as Admin and run
`Set-ExecutionPolicy -Scope Process Bypass`, then run the script. For the
Windows Update cache, run as Administrator.

It cleans: user temp, Windows temp, prefetch, Chrome / Edge / Firefox cache,
Windows Update cache, thumbnails, and empties the Recycle Bin.

## Android  (folder: android/  - no root, via ADB)

On the phone, go to Settings then About phone and tap "Build number" seven
times to enable Developer options. Then in Settings open Developer options
and turn ON USB debugging. Install ADB (Android Platform Tools) on your PC,
connect the phone via USB, and allow the debugging prompt. Finally run
clean_cache.bat (Windows) or clean_cache.sh (Mac / Linux).

It uses the official command `adb shell pm trim-caches`, which safely trims
the cache of ALL apps. No data is lost.

## iOS  (file: ios/GUIDE.md)

Manual safe steps only, because Apple does not allow automated cache apps.
See ios/GUIDE.md for the step-by-step guide.

## Safety

No system files are touched. Only cache / temp folders that regenerate
automatically are removed. Everything is open-source - read every line
before running.

## License

MIT
