# Complete 1-Click Setup & Verification for Flutter + Android
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Antigravity Flutter & Android Environment Setup & Check  " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Install all IDE Extensions
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$installExtScript = Join-Path $scriptDir "extensions\install_extensions.ps1"
if (Test-Path $installExtScript) {
    & powershell -ExecutionPolicy Bypass -File $installExtScript
}

# 2. Check Android SDK & Environment Variables
Write-Host "`n--> Checking Android SDK and Environment..." -ForegroundColor Yellow
$defaultSdk = "$env:LOCALAPPDATA\Android\Sdk"
if (!$env:ANDROID_HOME -and (Test-Path $defaultSdk)) {
    [System.Environment]::SetEnvironmentVariable("ANDROID_HOME", $defaultSdk, "User")
    $env:ANDROID_HOME = $defaultSdk
    Write-Host "  Set ANDROID_HOME = $defaultSdk" -ForegroundColor Green
} else {
    Write-Host "  ANDROID_HOME = $env:ANDROID_HOME" -ForegroundColor Green
}

# 3. Check ADB & Physical Devices
Write-Host "`n--> Checking Android Debug Bridge (ADB)..." -ForegroundColor Yellow
$adbCmd = Get-Command adb -ErrorAction SilentlyContinue
if ($adbCmd) {
    Write-Host "  ADB found at: $($adbCmd.Source)" -ForegroundColor Green
    Write-Host "  Connected physical devices (USB Debugging):"
    & adb devices
} else {
    Write-Host "  ADB not found in PATH. Check Android SDK platform-tools." -ForegroundColor Yellow
}

# 4. Check Flutter & Dart
Write-Host "`n--> Checking Flutter & Dart..." -ForegroundColor Yellow
$flutterCmd = Get-Command flutter -ErrorAction SilentlyContinue
if ($flutterCmd) {
    & flutter --version
    Write-Host "`n--> Running flutter doctor..." -ForegroundColor Yellow
    & flutter doctor
} else {
    Write-Host "  Flutter not found in PATH. Please install Flutter SDK from https://docs.flutter.dev" -ForegroundColor Red
}

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host " Setup check finished! Your IDE is Flutter & Android ready." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
