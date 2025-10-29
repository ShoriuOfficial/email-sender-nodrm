# 📦 Node.js Mail Uygulaması

Bu proje, **Express**, **Nodemailer**, **Body-Parser** ve **Path** modüllerini kullanarak basit bir e-posta gönderim sistemi sağlar.  
Kod dosyaları: `app.js`, `index.html`, `package.json`

---

## ⚙️ Gerekli Modüller

Projeyi çalıştırmadan önce aşağıdaki Node.js modüllerini yüklemen gerekir:

bash
npm install express nodemailer body-parser path

Bu komut, proje için gerekli tüm bağımlılıkları (node_modules) otomatik olarak indirir.


---

🚀 Başlatma

Uygulamayı başlatmak için:

node app.js

veya (varsa Başlat.lnk dosyasını çift tıklayarak da çalıştırabilirsin).

Tarayıcıdan şu adrese git:

http://localhost:3000


---

🧩 Modül Bilgileri

Modül	Görev

express	Sunucu kurmak ve HTTP isteklerini yönetmek
nodemailer	E-posta gönderimi için SMTP bağlantısı kurar
body-parser	Form verilerini yakalar (POST request'lerde)
path	Dosya ve klasör yollarını yönetir (örn. index.html’e yönlendirme)



---

📁 Dosya Yapısı

Files/
├── node_modules/       # Yüklenen modüller (otomatik oluşturulur)
├── files/              # Ek veriler veya statik dosyalar
├── app.js              # Ana sunucu dosyası
├── index.html          # Arayüz (form veya sayfa)
├── package.json        # Proje yapılandırması
├── package-lock.json   # Modül versiyon kilidi
├── README.md           # Bu dosya 🙂
└── .gitignore          # Git için hariç tutulan dosyalar


---

✉️ E-posta Gönderimi

app.js içinde SMTP ayarlarını güncelle:

const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 587,
  secure: false,
  auth: {
    user: "seninmail@ornek.com",
    pass: "uygulama_şifren"
  }
});

> ⚠️ Gmail kullanıyorsan, “Uygulama şifresi” oluşturmalısın. Normal şifre çalışmaz.




---

🔒 Notlar

.env dosyası kullanarak e-posta bilgilerini gizleyebilirsin.

node_modules Git’e yüklenmez (.gitignore içinde hariç tutulmalı).

Portu değiştirmek istersen app.js içinde app.listen(3000) kısmını düzenle.



---

👤 Yazar

ShoriuLegend (Ender)

> Node.js • Express • SMTP • HTML • Güvenlik dostu yapı 😎
