// =============================================================================
// BAB III  METODE PENELITIAN
// =============================================================================
= Metode Penelitian

== Waktu dan Tempat

Penelitian ini dilaksanakan pada bulan Januari hingga Desember 2025 di Kabupaten Bogor, Provinsi Jawa Barat. Analisis data dilakukan di Laboratorium Agroklimatologi, Departemen Agronomi dan Hortikultura, Fakultas Pertanian, IPB University.

== Bahan dan Alat

Data yang digunakan dalam penelitian ini meliputi:

+ Data iklim harian (curah hujan, suhu rata-rata, kelembapan relatif) dari tiga stasiun BMKG di Kabupaten Bogor periode 2015--2025.
+ Data produktivitas padi tahunan dari BPS Kabupaten Bogor periode 2015--2025.

Perangkat lunak yang digunakan adalah R versi 4.3.0 untuk analisis statistik dan QGIS versi 3.28 untuk analisis spasial.

== Metode Analisis

=== Analisis Tren Iklim

Analisis tren dilakukan menggunakan uji Mann-Kendall untuk mendeteksi adanya tren signifikan pada data curah hujan, suhu rata-rata, dan kelembapan relatif. Estimasi besarnya tren menggunakan metode Sen's slope.

=== Analisis Regresi

Pengaruh variabel iklim terhadap produktivitas padi dianalisis menggunakan model regresi linier berganda dengan persamaan:

$ Y = beta_0 + beta_1 X_1 + beta_2 X_2 + beta_3 X_3 + epsilon $

dengan:

- $Y$ = produktivitas padi (ton/ha)
- $X_1$ = curah hujan tahunan (mm)
- $X_2$ = suhu rata-rata tahunan (°C)
- $X_3$ = kelembapan relatif rata-rata tahunan (%)
- $epsilon$ = galat