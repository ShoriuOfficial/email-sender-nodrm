@echo off
chcp 65001 >nul
title Node.js Otomatik Kurucu - ShoriuOfficial ❤️
color 
echo Node.js kurulum işlemi başlatılıyor...
powershell -ExecutionPolicy Bypass -File "%~dp0install_node.ps1"
exit
