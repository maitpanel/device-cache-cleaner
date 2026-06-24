# iOS - Safe Cache Cleaning Guide

iOS does NOT allow any app (yours or third-party) to clear other
apps cache, because of Apple's sandbox security. There is no safe
automated method or app for this. Use these official, safe steps:

## Method 1: Offload an app (keeps your data)
Settings > General > iPhone Storage > [select app] > Offload App
- Removes the app but KEEPS its documents and data.
- Reinstall the app to restore everything.

## Method 2: Clear Safari cache
Settings > Safari > Clear History and Website Data

## Method 3: Auto-offload unused apps
Settings > App Store > Offload Unused Apps (toggle ON)

## Method 4: Per-app cache (inside the app)
Many apps have their own option:
app Settings > Storage / Cache > Clear Cache

## Method 5: Restart
Restarting your iPhone safely clears temporary system cache.

---
Note: Any App Store app claiming to clean other apps cache cannot
actually do it - iOS blocks this. Stick to the steps above.
