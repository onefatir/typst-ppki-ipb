// =============================================================================
// Contoh Penggunaan Template IPB PPKI
// =============================================================================
// Kompilasi: typst compile example.typ
// =============================================================================

#import "../lib/ppki.typ": *

#show: ipb-thesis.with(
  // -- Jenis dokumen --
  type: "skripsi",   // Pilih: "laporan-akhir", "skripsi", "skripsi-fkh", "tesis", "disertasi"

  // -- Metadata --
  title: "Analisis Pengaruh Perubahan Iklim terhadap Produktivitas Tanaman Padi di Kabupaten Bogor",
  title-en: "Analysis of Climate Change Effects on Rice Crop Productivity in Bogor Regency",
  author: "Nama Lengkap Penulis",
  nim: "G14200001",
  department: "Agronomi dan Hortikultura",
  faculty: "Fakultas Pertanian",
  program-studi: "Agronomi dan Hortikultura",
  year: "2026",

  // -- Logo IPB (sesuaikan path) --
  logo: "../icons/ipb.png",

  // -- Pembimbing & Penguji --
  supervisors: (
    "Prof Dr Ir Ahmad Sulaiman, MSi",
    "Dr Ir Budi Santoso, MSc",
  ),
  examiners: (
    "Dr Ir Citra Dewi, MSi",
    "Prof Dr Ir Darmawan, MSc",
  ),

  // -- Abstrak Indonesia --
  abstract-id: [
    Perubahan iklim merupakan salah satu tantangan utama dalam sektor pertanian global. Penelitian ini bertujuan menganalisis pengaruh perubahan iklim terhadap produktivitas tanaman padi di Kabupaten Bogor selama periode 2015--2025. Data iklim yang digunakan meliputi curah hujan, suhu rata-rata, dan kelembapan relatif yang diperoleh dari Badan Meteorologi Klimatologi dan Geofisika (BMKG). Data produktivitas padi diperoleh dari Badan Pusat Statistik (BPS) Kabupaten Bogor. Metode analisis yang digunakan adalah regresi linier berganda dan analisis korelasi Pearson. Hasil penelitian menunjukkan bahwa curah hujan dan suhu rata-rata berpengaruh signifikan terhadap produktivitas padi (p < 0.05). Peningkatan suhu rata-rata sebesar 1°C menyebabkan penurunan produktivitas sebesar 5.2%. Model prediksi menunjukkan bahwa produktivitas padi akan menurun 12--18% pada tahun 2050 jika tren perubahan iklim berlanjut.
  ],
  keywords-id: ("perubahan iklim", "produktivitas padi", "regresi linier", "Kabupaten Bogor"),

  // -- Abstrak Inggris --
  abstract-en: [
    Climate change is one of the main challenges in the global agricultural sector. This study aimed to analyze the effects of climate change on rice crop productivity in Bogor Regency during the period of 2015--2025. Climate data used included rainfall, average temperature, and relative humidity obtained from the Meteorology, Climatology, and Geophysics Agency (BMKG). Rice productivity data were obtained from the Central Statistics Agency (BPS) of Bogor Regency. The analytical methods used were multiple linear regression and Pearson correlation analysis. The results showed that rainfall and average temperature significantly affected rice productivity (p < 0.05). An increase of 1°C in average temperature caused a 5.2% decrease in productivity. The prediction model showed that rice productivity would decrease by 12--18% by 2050 if climate change trends continue.
  ],
  keywords-en: ("climate change", "rice productivity", "linear regression", "Bogor Regency"),

  // -- Ringkasan --
  ringkasan: [
    Perubahan iklim merupakan fenomena global yang berdampak signifikan terhadap berbagai sektor, termasuk pertanian. Indonesia sebagai negara agraris sangat rentan terhadap dampak perubahan iklim, khususnya pada produksi bahan pangan pokok seperti padi. Kabupaten Bogor sebagai salah satu sentra produksi padi di Jawa Barat mengalami fluktuasi produktivitas yang diduga berkaitan dengan perubahan pola iklim.

    Penelitian ini bertujuan untuk: (1) menganalisis tren perubahan iklim di Kabupaten Bogor selama periode 2015--2025, (2) menganalisis pengaruh variabel iklim terhadap produktivitas padi, dan (3) menyusun model prediksi produktivitas padi berdasarkan skenario perubahan iklim.

    Penelitian dilakukan menggunakan data sekunder yang mencakup data iklim harian dari tiga stasiun BMKG di Kabupaten Bogor dan data produktivitas padi tahunan dari BPS. Analisis data menggunakan metode regresi linier berganda dengan variabel dependen produktivitas padi (ton/ha) dan variabel independen curah hujan (mm), suhu rata-rata (°C), dan kelembapan relatif (%).

    Hasil analisis menunjukkan bahwa selama periode 2015--2025, terjadi peningkatan suhu rata-rata sebesar 0.3°C per dekade dan penurunan curah hujan sebesar 5% per dekade. Model regresi yang dihasilkan memiliki koefisien determinasi (R²) sebesar 0.78. Curah hujan dan suhu rata-rata secara bersama-sama berpengaruh signifikan terhadap produktivitas padi. Model prediksi menunjukkan penurunan produktivitas 12--18% pada tahun 2050.
  ],

  // -- Summary --
  summary: [
    Climate change is a global phenomenon that significantly impacts various sectors, including agriculture. Indonesia as an agricultural country is highly vulnerable to climate change impacts, particularly on staple food production such as rice. Bogor Regency, as one of the rice production centers in West Java, has experienced productivity fluctuations suspected to be related to changes in climate patterns.

    This study aimed to: (1) analyze climate change trends in Bogor Regency during the period 2015--2025, (2) analyze the effects of climate variables on rice productivity, and (3) develop a rice productivity prediction model based on climate change scenarios.

    The study was conducted using secondary data covering daily climate data from three BMKG stations in Bogor Regency and annual rice productivity data from BPS. Data analysis used multiple linear regression with rice productivity (ton/ha) as the dependent variable and rainfall (mm), average temperature (°C), and relative humidity (%) as independent variables.

    The results showed that during the period 2015--2025, there was an increase in average temperature of 0.3°C per decade and a decrease in rainfall of 5% per decade. The resulting regression model had a coefficient of determination (R²) of 0.78. Rainfall and average temperature together had a significant effect on rice productivity. The prediction model showed a 12--18% decrease in productivity by 2050.
  ],

  // -- Prakata --
  prakata: [
    Puji dan syukur penulis panjatkan kepada Tuhan Yang Maha Esa atas segala karunia-Nya sehingga karya ilmiah ini berhasil diselesaikan. Tema yang dipilih dalam penelitian ini adalah dampak perubahan iklim terhadap sektor pertanian.

    Terima kasih penulis ucapkan kepada Prof Dr Ir Ahmad Sulaiman, MSi dan Dr Ir Budi Santoso, MSc selaku pembimbing yang telah banyak memberi saran dan masukan. Di samping itu, penghargaan penulis sampaikan kepada Badan Meteorologi Klimatologi dan Geofisika (BMKG) dan Badan Pusat Statistik (BPS) Kabupaten Bogor yang telah menyediakan data untuk penelitian ini.

    Semoga karya ilmiah ini bermanfaat bagi pengembangan ilmu pengetahuan dan kebijakan adaptasi perubahan iklim di sektor pertanian.
  ],
  prakata-date: "Maret 2026",

  // -- Pengesahan --
  approval-date: "15 Maret 2026",

  // -- Opsi tampilan --
  show-daftar-lampiran: true,
)

#include "bab-1.typ"
#include "bab-2.typ"
#include "bab-3.typ"
#include "bab-4.typ"
#include "bab-5.typ"

// =============================================================================
// DAFTAR PUSTAKA
// =============================================================================
// Daftar pustaka otomatis menggunakan file .bib dan gaya sitasi ipb.csl
#pagebreak()
#bibliography("refs.bib", title: "Daftar Pustaka", style: "../lib/csl/ipb.csl")

// =============================================================================
// LAMPIRAN
// =============================================================================
#pagebreak()
#heading(level: 1, numbering: none)[Lampiran]

#figure(
  kind: "lampiran",
  supplement: [Lampiran],
  caption: [Data curah hujan bulanan stasiun BMKG Citeko (2015--2025)],
)[
  #table(
    columns: (auto, auto, auto),
    inset: 8pt,
    align: (center, center, center),
    table.header(
      [*Tahun*], [*Curah Hujan (mm)*], [*Hari Hujan*],
    ),
    [2015], [3120], [182],
    [2016], [2980], [175],
    [2017], [3050], [180],
    [2018], [2890], [168],
    [2019], [2750], [162],
    [2020], [2810], [170],
    [2021], [2680], [158],
    [2022], [2720], [163],
    [2023], [2650], [155],
    [2024], [2600], [151],
    [2025], [2570], [148],
  )
]

// =============================================================================
// RIWAYAT HIDUP
// =============================================================================
#pagebreak()
#heading(level: 1, numbering: none)[Riwayat Hidup]

Penulis dilahirkan di Bogor pada tanggal 15 Januari 2004 dari ayah bernama Bapak Suharto dan ibu bernama Ibu Suryani. Penulis merupakan anak pertama dari dua bersaudara.

Penulis menyelesaikan pendidikan menengah atas di SMA Negeri 1 Bogor pada tahun 2021. Pada tahun yang sama, penulis diterima di IPB University melalui jalur Seleksi Nasional Berdasarkan Prestasi (SNBP) pada Program Studi Agronomi dan Hortikultura, Fakultas Pertanian.

Selama mengikuti perkuliahan, penulis aktif dalam organisasi kemahasiswaan sebagai anggota Himpunan Mahasiswa Agronomi (HIMAGRON) periode 2022/2023. Penulis juga pernah menjadi asisten praktikum mata kuliah Dasar-Dasar Agronomi pada semester genap 2023/2024.
