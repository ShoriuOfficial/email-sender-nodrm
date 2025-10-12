@echo off
chcp 65001 >nul
title Port yönlendirme sistemi, ShoriuOfficial tarafından ❤️
echo Port yönlendiriliyor, lütfen bekleyiniz...
timeout /t 2 >nul
ngrok config add-authtoken 2fSknNPbxQXYnDvlfAeaYK820uZ_6mKZYcAP2Apy8BQ1AcR6m
ngrok http 3000
echo Yönlendirme başarısız, kapanıyor...
timeout /t 3 >nul
