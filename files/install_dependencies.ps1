# PowerShell script to automatically install dependencies
Write-Host "Gerekli bağımlılıklar kuruluyor..." -ForegroundColor Green
Write-Host "BU PENCEREYİ KAPATMAYIN, İŞLEM BİTİNCE OTOMATİK KAPANACAKTIR!!" -ForegroundColor Red

Write-Host "Express kuruluyor..."
npm install express --silent
if ($LASTEXITCODE -ne 0) {
    Write-Host "Express kurulurken bir hata oluştu." -ForegroundColor Red
} else {
    Write-Host "Express başarıyla kuruldu!" -ForegroundColor Cyan
}

Write-Host "Nodemailer kuruluyor..."
npm install nodemailer --silent
if ($LASTEXITCODE -ne 0) {
    Write-Host "Nodemailer kurulurken bir hata oluştu." -ForegroundColor Red
} else {
    Write-Host "Nodemailer başarıyla kuruldu!" -ForegroundColor Cyan
}

Write-Host "Bağımlılıklar başarıyla kuruldu. Pencere otomatik kapanacak." -ForegroundColor Green
Start-Sleep -Seconds 5

# PowerShell oturumunu kapat
exit
