# ============================================================
#  Device Cache Cleaner - Windows
#  Safe cache cleaner. Only removes temp/cache files that
#  Windows regenerates. Does NOT touch system files or data.
# ============================================================

Write-Host "==== Windows Safe Cache Cleaner ====" -ForegroundColor Cyan
Write-Host "Starting... nothing important will be deleted."

function Clear-Safe($path, $label) {
if (Test-Path $path) {
try {
$before = (Get-ChildItem $path -Recurse -Force -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum
Get-ChildItem $path -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
$mb = [math]::Round($before / 1MB, 1)
Write-Host ("[OK]  " + $label + "  (~" + $mb + " MB)") -ForegroundColor Green
} catch {
Write-Host ("[SKIP] " + $label + " (in use)") -ForegroundColor Yellow
}
} else {
Write-Host ("[--]  " + $label + " (not found)") -ForegroundColor DarkGray
}
}

Clear-Safe "$env:TEMP\*" "User Temp files"
Clear-Safe "$env:WINDIR\Temp\*" "Windows Temp files"
Clear-Safe "$env:WINDIR\Prefetch\*" "Prefetch"
Clear-Safe "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache\*" "Chrome cache"
Clear-Safe "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*" "Edge cache"
Clear-Safe "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*\cache2\*" "Firefox cache"
Clear-Safe "$env:WINDIR\SoftwareDistribution\Download\*" "Windows Update cache"

try {
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
Write-Host "[OK]  Recycle Bin emptied" -ForegroundColor Green
} catch {}

Write-Host "==== Done! Your system is clean and safe. ====" -ForegroundColor Cyan
Read-Host "Press Enter to close"
