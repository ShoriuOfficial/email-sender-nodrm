const express = require('express');
const nodemailer = require('nodemailer');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();
const port = 3000;

let sentCode = '';
let codeUsed = false;

app.use(bodyParser.json());

const transporter = nodemailer.createTransport({
  host: "<E-poçt server>",
  port: 465,
  secure: true,
  auth: {
    user: "<E-Poçt istifadə adı>",
    pass: "<E-poçt şifrə>"
  }
});

function generateCode() {
  return Math.floor(100000 + Math.random() * 900000).toString();
}

async function sendVerificationEmail(email) {
  sentCode = generateCode();
  codeUsed = false;
  const mailOptions = {
    from: '"Test Video" <E-Poçt istifadə adı>',
    to: email,
    subject: "Test Video",
    text: `Doğrulama kodunuz: ${sentCode}`
  };

  try {
    const info = await transporter.sendMail(mailOptions);
    return { message: "E-posta başarıyla gönderildi(Eğer kodunuzu bulamazsanız, spam klasörünü kontrol edin)", code: sentCode };
  } catch (error) {
    console.error("E-posta gönderilemedi:", error);
    throw new Error("E-posta gönderilemedi.");
  }
}

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.post('/send-email', async (req, res) => {
  const { email } = req.body;

  try {
    const result = await sendVerificationEmail(email);
    res.json(result);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.post('/verify-code', (req, res) => {
  const { code } = req.body;
  if (codeUsed) {
    return res.status(400).json({ message: "Süresi dolmuş bir kod girdiniz!" });
  }

  if (code === sentCode) {
    codeUsed = true;
    res.json({ message: "Başarıyla doğrulandınız!" });
  } else {
    res.status(400).json({ message: "Girilen kod geçersizdir!" });
  }
});
console.log("Script başlatılıyor...");
setTimeout(() => {
  app.listen(port, () => {
    console.log(`Script başlatıldı. İyi eğlenceler! (http://127.0.0.1:${port})`);
  });
}, 2000);
