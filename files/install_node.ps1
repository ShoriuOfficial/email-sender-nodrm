Write-Host "NodeJS kurulum islemi basladi..."
Write-Host "NodeJS kontrol ediliyor..."

if (!(Get-Command "node" -ErrorAction SilentlyContinue)) {
    Write-Host "NodeJS yuklu degil. Kurulum dosyasi indiriliyor..."

    $nodeInstallerUrl = "https://nodejs.org/dist/v18.17.1/node-v18.17.1-x64.msi"
    $installerPath = "$env:TEMP\node-v18.17.1-x64.msi"

    Invoke-WebRequest -Uri $nodeInstallerUrl -OutFile $installerPath
    Write-Host "NodeJS indirildi. Kurulum baslatiliyor..."

    Start-Process msiexec.exe -ArgumentList "/i $installerPath /quiet /norestart" -Wait
    Write-Host "NodeJS basariyla kuruldu!"
} else {
    Write-Host "NodeJS zaten yuklu."
    $nodeVersion = & node --version
    Write-Host "Yuklu surum: $nodeVersion"
}

Write-Host "Islem tamamlandi. Pencere otomatik kapanacak."
Start-Sleep -Seconds 5
