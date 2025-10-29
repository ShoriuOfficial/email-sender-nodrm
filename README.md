
# 📦 Node.js Poçt Tətbiqi

Bu layihə **Express**, **Nodemailer**, **Body-Parser** və **Path** modullarından istifadə edərək sadə bir e-poçt göndərmə sistemi yaradır.  
Əsas fayllar: `app.js`, `index.html`, `package.json`

---

## ⚙️ Lazımi Modullar

Layihəni işə salmazdan əvvəl aşağıdakı Node.js modullarını quraşdırmaq lazımdır:

- ```npm install express nodemailer body-parser path```

Bu əmrlə bütün zəruri asılılıqlar (node_modules) avtomatik yüklənəcək.


---

🚀 Başlatma

Tətbiqi işə salmaq üçün:

- ```node app.js```

və ya (əgər varsa) Başlat.lnk faylını iki dəfə klikləməklə də başlada bilərsən.

Sonra brauzerdə bu ünvana daxil ol:

http://localhost:3000


---

🧩 Modul Məlumatı

Modul	Vəzifə

express  	Server qurmaq və HTTP sorğularını idarə etmək
nodemailer  	SMTP vasitəsilə e-poçt göndərmək üçün istifadə olunur
body-parser  	Form məlumatlarını oxumaq (POST sorğularında)
path	  	Fayl və qovluq yollarını idarə edir (məs: index.html-ə yönləndirmə)



---

📁 Fayl Quruluşu

Files/
├── node_modules/       # Quraşdırılmış modullar (avtomatik yaranır)
├── files/              # Əlavə məlumatlar və ya statik fayllar
├── app.js              # Əsas server faylı
├── index.html          # İstifadəçi interfeysi
├── port.exe            # Port açmaq üçün vacib
 (form və ya səhifə)
├── package.json        # Layihənin konfiqurasiya faylı
├── package-lock.json   # Modul versiya kilidi
├── README.md           # Bu sənəd 🙂
└── 

---

✉️ E-poçt Göndərilməsi

app.js daxilində SMTP ayarlarını yenilə:

const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 587,
  secure: false,
  auth: {
    user: "səninmail@ornek.com",
    pass: "tətbiq_şifrən"
  }
});

> ⚠️ Əgər Gmail istifadə edirsənsə, “Tətbiq üçün şifrə” yaratmalısan. Adi hesab şifrəsi işləmir.




---

🔒 Qeydlər

E-poçt məlumatlarını gizlətmək üçün .env faylından istifadə edə bilərsən.

node_modules Git deposuna yüklənmir (.gitignore daxilində istisna edilir).

Portu dəyişmək üçün app.js faylındakı app.listen(3000) sətrini düzəlt.


---

👤 Müəllif

ShoriuLegend (Ender)

> Node.js • Express • SMTP • HTML • Təhlükəsiz və səliqəli quruluş 😎
