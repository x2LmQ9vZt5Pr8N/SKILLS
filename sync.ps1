# Sync Antigravity Config & Skills with GitHub
param(
    [string]$Action = "pull" # "pull" or "push"
)

$configDir = "$HOME\.gemini\config"
Set-Location $configDir

if ($Action -eq "push") {
    Write-Host "Syncing Antigravity settings to GitHub..." -ForegroundColor Cyan
    git add .
    git commit -m "Update Antigravity config, skills, and protocols [$(Get-Date -Format 'yyyy-MM-dd HH:mm')]"
    git push origin main
    Write-Host "Push complete!" -ForegroundColor Green
} else {
    Write-Host "Updating Antigravity settings from GitHub..." -ForegroundColor Cyan
    git pull origin main
    Write-Host "Update complete!" -ForegroundColor Green
}
