# Script to install Azure Data Studio & VSCode 
# If you have latest SSMS (v18+), you can invoke ADS from Tools -> Azure Data Studio 
# run this from PowerShell ISE with elevated access 

[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
function Disable-InternetExplorerESC {
 $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
 $UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
 Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
 Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
 Stop-Process -Name Explorer
 Write-Host "IE Enhanced Security Configuration (ESC) has been disabled." -ForegroundColor Green
}
Disable-InternetExplorerESC

choco install vscode -y
choco install azure-data-studio -y