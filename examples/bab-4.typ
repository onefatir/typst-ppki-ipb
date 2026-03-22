// =============================================================================
// BAB IV  HASIL DAN PEMBAHASAN
// =============================================================================
= Hasil dan Pembahasan

== Tren Perubahan Iklim di Kabupaten Bogor

Hasil analisis tren iklim di Kabupaten Bogor selama periode 2015--2025 disajikan pada @tabel-tren-iklim.

#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: (left, center, center, center),
    table.header(
      [*Variabel Iklim*], [*Rata-rata*], [*Tren per Dekade*], [*p-value*],
    ),
    [Curah hujan (mm/tahun)], [2850], [-142.5], [0.023],
    [Suhu rata-rata (°C)], [25.8], [+0.3], [0.001],
    [Kelembapan relatif (%)], [82.1], [-0.8], [0.156],
  ),
  caption: [Tren perubahan variabel iklim di Kabupaten Bogor (2015--2025)],
) <tabel-tren-iklim>

Berdasarkan @tabel-tren-iklim, terjadi penurunan curah hujan yang signifikan (p = 0.023) sebesar 142.5 mm per dekade dan peningkatan suhu rata-rata yang sangat signifikan (p = 0.001) sebesar 0.3°C per dekade. Tren penurunan kelembapan relatif tidak signifikan secara statistik (p = 0.156).

== Pengaruh Variabel Iklim terhadap Produktivitas Padi

Hasil analisis regresi linier berganda disajikan pada @tabel-regresi.

#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: (left, center, center, center),
    table.header(
      [*Variabel*], [*Koefisien*], [*Std. Error*], [*p-value*],
    ),
    [Konstanta], [12.450], [2.310], [0.001],
    [Curah hujan], [0.0012], [0.0004], [0.015],
    [Suhu rata-rata], [-0.520], [0.180], [0.012],
    [Kelembapan relatif], [0.035], [0.028], [0.231],
  ),
  caption: [Hasil analisis regresi linier berganda],
) <tabel-regresi>

Model regresi yang dihasilkan memiliki koefisien determinasi (R²) sebesar 0.78, yang menunjukkan bahwa 78% variasi produktivitas padi dapat dijelaskan oleh variabel iklim yang digunakan. Curah hujan dan suhu rata-rata berpengaruh signifikan terhadap produktivitas padi (p < 0.05), sedangkan kelembapan relatif tidak berpengaruh signifikan.

== Pembahasan

Hasil penelitian menunjukkan bahwa peningkatan suhu rata-rata sebesar 1°C menyebabkan penurunan produktivitas padi sebesar 0.52 ton/ha atau sekitar 5.2%. Temuan ini sejalan dengan hasil penelitian #cite(<peng2004>, form: "prose") yang melaporkan penurunan hasil padi sebesar 10% untuk setiap peningkatan suhu minimum 1°C. Pengaruh negatif suhu tinggi terhadap produktivitas padi disebabkan oleh terganggunya proses fotosintesis dan percepatan senescence daun.

Curah hujan berpengaruh positif terhadap produktivitas padi. Penurunan curah hujan menyebabkan berkurangnya ketersediaan air untuk irigasi, yang pada akhirnya mengurangi produktivitas padi. Temuan ini konsisten dengan hasil penelitian #cite(<naylor2007>, form: "prose") yang menunjukkan korelasi positif antara curah hujan musim hujan dengan produktivitas padi di pulau Jawa.