# 🍽️ Restoran Şube Performans Analizi
### Simpson Paradoksu & Confounding Variable Tespiti

![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL%20Uyumlu-336791?logo=postgresql&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-2.x-150458?logo=pandas&logoColor=white)
![Konu](https://img.shields.io/badge/Konu-Simpson%20Paradoksu-orange)

---

## 📌 Proje Özeti

Bir restoran zinciri iki şube yöneticisini müşteri memnuniyeti üzerinden karşılaştırıyor.

**Yönetim ham veriyi bakıp şunu söyledi:**
> *"Şube B %76 memnuniyetle Şube A'nın (%54) belirgin üzerindedir.  
> Şube B yöneticisi ödüllendirilmeli, Şube A için yönetici değişikliği önerilir."*

**Ama veri bunu söylemiyordu.**

---

## 🔍 Temel Bulgular

| | Ham Veri | AVM Lokasyonu | Sanayi Lokasyonu |
|---|:---:|:---:|:---:|
| **Şube A** | %53.9 | **%92.5** ✅ | **%44.3** ✅ |
| **Şube B** | **%77.4** | %86.3 | %42.0 |

> Lokasyon sabit tutulduğunda **her segmentte Şube A kazanıyor.**  
> Bu klasik bir **Simpson Paradoksu** vakasıdır.

---

## 🧩 Neden Böyle Oldu?
Şube A anketlerinin %80'i → Sanayi lokasyonu (doğal olarak düşük memnuniyet)
Şube B anketlerinin %80'i → AVM lokasyonu   (doğal olarak yüksek memnuniyet)

Routing sistemi **tamamen zıt yönde** dengesiz dağılım oluşturdu.  
Bu **selection bias**, ham karşılaştırmayı baştan adaletsiz kılar.

---

## 📊 Görselleştirme

| Grafik 1 — Yanıltıcı | Grafik 2 — Doğru |
|:---:|:---:|
| ![](grafik1.png) | ![](grafik2.png) |

| Grafik 3 — Matris | Grafik 4 — Dağılım |
|:---:|:---:|
| ![](graifk3.png) | ![](grafik4son.png) |

---

## 🧪 İstatistiksel Test Sonuçları

- **Ham veri Z-testi:** z ≈ −11.07, p < 0.001 → Şube B anlamlı önde *görünüyor*
- **AVM'de:** p ≈ 0.017 → **Şube A anlamlı önde** ✅
- **Sanayi'de:** p ≈ 0.566 → Anlamlı fark yok

Lokasyon kontrol edildiğinde Şube B'nin üstünlüğü tamamen yok oluyor.

---

## 💡 Öğrenilen Dersler

1. Ham oran tek başına yanıltır — her zaman segmente göre kır
2. Confounding variable tespiti analizin kritik adımıdır
3. Simpson Paradoksu gerçek İK kararlarında ciddi hataya yol açabilir
4. Adil karşılaştırma için eşit koşullar (random/stratified routing) şarttır

---
