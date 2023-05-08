#ps1_sysnative

$scriptUrl = "https://raw.githubusercontent.com/KopiCloud-AD-API/kopicloud-ad-api-setup-scripts/main/setup-win2022.ps1"
$scriptPath = "$env:TEMP\\setup-win2022.ps1"
Invoke-WebRequest -Uri $scriptUrl -OutFile $scriptPath
Set-ExecutionPolicy Unrestricted -Force
powershell -ExecutionPolicy Unrestricted -File $scriptPath