@echo off
chcp 65001 >nul
title Bağımlılıkları Otomatik Kurucu - ShoriuOfficial ❤️
color a

echo PowerShell Script çalıştırılıyor...
powershell -ExecutionPolicy Bypass -File "%~dp0install_dependencies.ps1"

exit
