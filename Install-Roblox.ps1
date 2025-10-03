$robloxInstaller = "https://setup.rbxcdn.com/RobloxPlayerLauncher.exe"
$installerPath = "$env:TEMP\RobloxPlayerLauncher.exe"

Write-Host "Downloading Roblox installer..."
Invoke-WebRequest -Uri $robloxInstaller -OutFile $installerPath -UseBasicParsing

Write-Host "Running Roblox installer..."
Start-Process -FilePath $installerPath -ArgumentList "/silent" -Wait

Write-Host "Opening Roblox website..."
Start-Process "https://www.roblox.com/"

Write-Host "Roblox installation complete!"
