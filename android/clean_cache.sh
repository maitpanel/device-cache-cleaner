#!/bin/bash
# ============================================================
#  Android Safe Cache Cleaner (via ADB - no root needed)
#  Trims ALL apps cache safely. Android regenerates cache.
#  No personal data, photos, or apps are deleted.
# ============================================================
echo "==== Android Safe Cache Cleaner ===="
echo "Make sure USB Debugging is ON and phone is connected."
echo ""
adb devices
echo ""
echo "Trimming cache for ALL apps (safe)..."
adb shell pm trim-caches 999999999999
echo ""
echo "==== Done! All app caches trimmed safely. ===="
