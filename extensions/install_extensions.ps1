# Auto-Installer for Antigravity & VS Code Extensions
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Antigravity & Flutter/Android Extensions Auto-Installer " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$listFile = Join-Path $scriptDir "extensions_list.txt"
$settingsSrc = Join-Path $scriptDir "settings.json"

if (!(Test-Path $listFile)) {
    Write-Host "Error: extensions_list.txt not found in $scriptDir" -ForegroundColor Red
    exit 1
}

# 1. Locate Antigravity or Code CLI
$cliTargets = @()

$antigravityCmd = "$env:LOCALAPPDATA\Programs\Antigravity IDE\bin\antigravity-ide.cmd"
if (Test-Path $antigravityCmd) {
    $cliTargets += [PSCustomObject]@{ Name = "Antigravity IDE"; Path = $antigravityCmd }
}

$codeCmd = Get-Command code.cmd, code -ErrorAction SilentlyContinue | Select-Object -First 1
if ($codeCmd) {
    $cliTargets += [PSCustomObject]@{ Name = "VS Code"; Path = $codeCmd.Source }
}

if ($cliTargets.Count -eq 0) {
    Write-Host "Warning: Neither Antigravity IDE CLI nor VS Code CLI found in PATH or standard location." -ForegroundColor Yellow
    Write-Host "Extensions can still be installed manually via the Extensions tab."
    exit 0
}

# 2. Parse Extension IDs
$rawLines = Get-Content $listFile
$extensions = @()
foreach ($line in $rawLines) {
    $t = $line.Trim()
    if ($t -and !$t.StartsWith("#")) {
        $extensions += $t
    }
}

Write-Host "Found $($extensions.Count) extensions to install across $($cliTargets.Count) IDE environment(s)." -ForegroundColor Green

# 3. Install Extensions
foreach ($target in $cliTargets) {
    Write-Host "`n--> Installing extensions into $($target.Name)..." -ForegroundColor Yellow
    foreach ($ext in $extensions) {
        Write-Host "  Installing $ext..." -NoNewline
        & $target.Path --install-extension $ext --force 2>$null | Out-Null
        if ($LASTEXITCODE -eq 0) {
            Write-Host " [OK]" -ForegroundColor Green
        } else {
            Write-Host " [DONE / Check]" -ForegroundColor Gray
        }
    }
}

# 4. Sync settings.json
$settingsDestinations = @(
    "$env:APPDATA\Antigravity IDE\User\settings.json",
    "$env:APPDATA\Code\User\settings.json"
)

if (Test-Path $settingsSrc) {
    foreach ($dest in $settingsDestinations) {
        $parent = Split-Path -Parent $dest
        if (Test-Path $parent) {
            Copy-Item -Path $settingsSrc -Destination $dest -Force
            Write-Host "Updated settings: $dest" -ForegroundColor Green
        }
    }
}

Write-Host "`nAll extensions and settings successfully configured!" -ForegroundColor Cyan
