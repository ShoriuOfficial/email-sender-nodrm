import random
import string

def generate_key():
    # Rastgele 6 karakterli bir parça oluştur (büyük harf ve rakam)
    def random_part():
        return ''.join(random.choices(string.ascii_uppercase + string.digits, k=6))
    
    # 3 parça oluştur ve anahtar formatını birleştir
    key = f"SHORIU-{random_part()}-{random_part()}-{random_part()}"
    return key

# Örnek kullanım:
for _ in range(99999999):  # 5 tane anahtar üretmek için
    print(generate_key())
