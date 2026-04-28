

-- Her Şubenin Lokasyon Tipine Göre Memnuniyet Oranı
SELECT
    model AS sube,  -- şube bilgisi
    lokasyon_tipi, -- AVM veya sanayi
    COUNT(*) AS anket_sayisi, -- şube-lokasyon grubundaki toplam anket
    SUM(CASE WHEN musteri_memnun = 'evet' THEN 1 ELSE 0 END) AS memnun_sayisi, -- evet=1 topla
    ROUND(100.0 * SUM(CASE WHEN musteri_memnun = 'evet' THEN 1 ELSE 0 END) / COUNT(*), 2) AS memnuniyet_yuzde -- memnuniyeti yüzdelik hesapla
FROM restoran_memnuniyet -- veri kaynağı
GROUP BY model, lokasyon_tipi -- şube ve lokasyon kombinasyonlarına göre ayrı satır
ORDER BY model, lokasyon_tipi; -- önce şubeye sonra lokasyona göre sıralar