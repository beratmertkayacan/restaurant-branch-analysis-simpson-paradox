--Her Şubenin Genel Memnuniyet Oranı 
SELECT
    model AS sube,  --şube bilgisi 
    COUNT(*) AS anket_sayisi, --her şubedeki toplam anket
    SUM(CASE WHEN musteri_memnun = 'evet' THEN 1 ELSE 0 END) AS memnun_sayisi, --evet=1 topla
    ROUND(100.0 * SUM(CASE WHEN musteri_memnun = 'evet' THEN 1 ELSE 0 END) / COUNT(*), 2) AS memnuniyet_yuzde -- memnuniyeti yüzdelik olarak
FROM restoran_memnuniyet --veri kaynağı 
GROUP BY model --her şube için ayrı satır 
ORDER BY model; --önce Sube_A sonra Sube_B 

