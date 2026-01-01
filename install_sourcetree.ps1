# Download and install SourceTree silently
# Note: Run this script as administrator if required

$url = "https://product-downloads.atlassian.com/software/sourcetree/windows/ga/SourceTreeSetup-3.4.27.exe"
$installerPath = "$env:TEMP\SourceTreeSetup.exe"

# Download the installer
Invoke-WebRequest -Uri $url -OutFile $installerPath

# Install silently
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

# Clean up
Remove-Item $installerPath

Write-Host "SourceTree installation completed."
