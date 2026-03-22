# Template Typst — Karya Ilmiah IPB University (PPKI Edisi 4)

Template Typst untuk penulisan karya ilmiah sesuai **Pedoman Penulisan Karya Ilmiah (PPKI) Institut Pertanian Bogor, Edisi 4**. Buka folder `examples` untuk contoh penggunaan.

## Jenis Dokumen yang Didukung

| Kode | Jenis | Strata | Gelar |
|------|-------|--------|-------|
| `laporan-akhir` | Laporan Akhir | D3 | Ahli Madya |
| `skripsi` | Skripsi | S1 | Sarjana |
| `skripsi-fkh` | Skripsi FKH | S1 (Kedokteran Hewan) | Sarjana |
| `tesis` | Tesis | S2 | Magister Sains |
| `disertasi` | Disertasi | S3 | Doktor |

## Struktur File

```
ipb-ppki/
├── lib.typ         # Template utama (import ini)
├── example.typ     # Contoh penggunaan lengkap
├── ipb.png         # Logo IPB (ganti sesuai kebutuhan)
└── README.md       # Dokumentasi ini
```

## Cara Cepat Memulai

### 1. Buat file `.typ` baru

```typst
#import "./lib/ppki.typ": *

#show: ipb-thesis.with(
  type: "skripsi",
  title: "Judul Skripsi Anda",
  title-en: "Your Thesis Title in English",
  author: "Nama Lengkap",
  nim: "G14200001",
  department: "Nama Departemen",
  faculty: "Nama Fakultas",
  program-studi: "Nama Program Studi",
  year: "2026",
  logo: "ipb.png",
  supervisors: ("Prof Dr Pembimbing 1", "Dr Pembimbing 2"),
  examiners: ("Dr Penguji 1", "Dr Penguji 2"),
)

= Pendahuluan

== Latar Belakang

Isi latar belakang di sini...
```

### 2. Kompilasi

```bash
typst compile dokumen.typ
```

## Referensi Parameter Lengkap

### Parameter Wajib

| Parameter | Tipe | Keterangan |
|-----------|------|------------|
| `type` | `str` | Jenis dokumen: `"laporan-akhir"`, `"skripsi"`, `"skripsi-fkh"`, `"tesis"`, `"disertasi"` |
| `title` | `str` | Judul karya ilmiah (bahasa Indonesia) |
| `author` | `str` | Nama lengkap penulis |
| `nim` | `str` | Nomor Induk Mahasiswa |
| `year` | `str` | Tahun lulus/pengesahan |

### Parameter Identitas Institusi

| Parameter | Tipe | Keterangan |
|-----------|------|------------|
| `department` | `str` | Nama departemen |
| `faculty` | `str` | Nama fakultas/sekolah |
| `program-studi` | `str` | Nama program studi |
| `institution-lines` | `array` | Override baris institusi di cover/title page (opsional) |

### Parameter Konten

| Parameter | Tipe | Keterangan |
|-----------|------|------------|
| `title-en` | `str` | Judul dalam bahasa Inggris |
| `abstract-id` | `content` | Isi abstrak bahasa Indonesia |
| `keywords-id` | `array` | Kata kunci bahasa Indonesia (maks. 5) |
| `abstract-en` | `content` | Isi abstrak bahasa Inggris |
| `keywords-en` | `array` | Keywords bahasa Inggris (maks. 5) |
| `ringkasan` | `content` | Isi ringkasan |
| `summary` | `content` | Isi summary |
| `prakata` | `content` | Isi prakata |
| `prakata-city` | `str` | Kota prakata (default: `"Bogor"`) |
| `prakata-date` | `str` | Tanggal prakata |

### Parameter Pembimbing & Penguji

| Parameter | Tipe | Keterangan |
|-----------|------|------------|
| `supervisors` | `array` | Daftar nama pembimbing beserta gelar |
| `examiners` | `array` | Daftar nama penguji beserta gelar |
| `approval-date` | `str` | Tanggal pengesahan |

### Parameter Aset

| Parameter | Tipe | Keterangan |
|-----------|------|------------|
| `logo` | `str` | Path ke file logo IPB (PNG/SVG) |

### Parameter Tampilan (Show/Hide)

Semua bernilai `true` secara default kecuali `show-daftar-lampiran`.

| Parameter | Default | Keterangan |
|-----------|---------|------------|
| `show-cover` | `true` | Halaman sampul |
| `show-title-page` | `true` | Halaman judul |
| `show-copyright` | `true` | Halaman hak cipta |
| `show-statement` | `true` | Halaman pernyataan |
| `show-approval` | `true` | Halaman pengesahan |
| `show-abstract-id` | `true` | Abstrak bahasa Indonesia |
| `show-abstract-en` | `true` | Abstrak bahasa Inggris |
| `show-ringkasan` | `true` | Ringkasan |
| `show-summary` | `true` | Summary |
| `show-prakata` | `true` | Prakata |
| `show-daftar-isi` | `true` | Daftar Isi |
| `show-daftar-tabel` | `true` | Daftar Tabel |
| `show-daftar-gambar` | `true` | Daftar Gambar |
| `show-daftar-lampiran` | `false` | Daftar Lampiran |

## Menulis Bagian Utama

### Heading / Judul Bab

Template secara otomatis memformat heading sesuai PPKI:

```typst
= Pendahuluan                    // BAB I  PENDAHULUAN
== Latar Belakang                // 1.1 Latar Belakang
=== Sub-subbab                   // 1.1.1 Sub-subbab
==== Sub-sub-subbab              // 1.1.1.1 Sub-sub-subbab
```

Level 1 (`=`) selalu membuat halaman baru dan ditampilkan sebagai "BAB [romawi]" di tengah halaman.

### Tabel

Tabel menggunakan `figure` dengan `kind: table`. Caption otomatis di atas tabel.

```typst
#figure(
  table(
    columns: (auto, auto, auto),
    table.header([*Kolom 1*], [*Kolom 2*], [*Kolom 3*]),
    [Data 1], [Data 2], [Data 3],
  ),
  caption: [Judul tabel],
) <label-tabel>

Lihat @label-tabel untuk detail.
```

### Gambar

```typst
#figure(
  image("gambar.png", width: 80%),
  caption: [Judul gambar],
) <label-gambar>
```

### Persamaan Matematika

```typst
$ Y = beta_0 + beta_1 X_1 + beta_2 X_2 + epsilon $
```

### Daftar Pustaka (Manual)

Untuk daftar pustaka manual sesuai format CSE nama-tahun:

```typst
#pagebreak()
#heading(level: 1, numbering: none)[Daftar Pustaka]

#set par(hanging-indent: 1.27cm, first-line-indent: 0pt, justify: true)

#block(spacing: 0.8em)[
  Penulis AA, Penulis BB. 2024. Judul artikel. _Nama Jurnal._ 10(2):100--110.
]

#block(spacing: 0.8em)[
  [BPS] Badan Pusat Statistik. 2024. _Judul Publikasi_. Jakarta (ID): BPS.
]
```

### Lampiran

```typst
#pagebreak()
#heading(level: 1, numbering: none)[Lampiran]

#figure(
  kind: "lampiran",
  supplement: [Lampiran],
  caption: [Judul lampiran],
)[
  // Isi lampiran (tabel, gambar, dsb.)
]
```

### Riwayat Hidup

```typst
#pagebreak()
#heading(level: 1, numbering: none)[Riwayat Hidup]

Penulis dilahirkan di ... pada tanggal ...
```

## Heading Tanpa Nomor

Untuk heading tanpa nomor (Daftar Pustaka, Lampiran, Riwayat Hidup):

```typst
#heading(level: 1, numbering: none)[Daftar Pustaka]
```

## Kustomisasi Baris Institusi

Jika baris institusi default tidak sesuai, override dengan `institution-lines`:

```typst
#show: ipb-thesis.with(
  // ...
  institution-lines: (
    "DEPARTEMEN ILMU KOMPUTER",
    "FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM",
    "IPB UNIVERSITY",
    "BOGOR",
  ),
)
```

## Komponen yang Dapat Digunakan Terpisah

Selain fungsi utama `ipb-thesis`, template juga mengekspor fungsi-fungsi komponen yang dapat digunakan secara mandiri:

| Fungsi | Keterangan |
|--------|------------|
| `cover-page(...)` | Halaman sampul saja |
| `title-page(...)` | Halaman judul saja |
| `copyright-page(...)` | Halaman hak cipta |
| `statement-page(...)` | Halaman pernyataan |
| `approval-page(...)` | Halaman pengesahan |
| `abstract-page(...)` | Halaman abstrak |
| `ringkasan-page(...)` | Halaman ringkasan/summary |
| `prakata-page(...)` | Halaman prakata |
| `daftar-isi()` | Daftar isi |
| `daftar-tabel()` | Daftar tabel |
| `daftar-gambar()` | Daftar gambar |
| `daftar-lampiran()` | Daftar lampiran |

## Spesifikasi Format (PPKI Ed. 4)

| Aspek | Spesifikasi |
|-------|-------------|
| Kertas | A4 |
| Margin | Atas 3cm, Bawah 3cm, Kiri 4cm, Kanan 3cm |
| Font | Times New Roman |
| Ukuran font isi | 12pt |
| Ukuran font judul/cover | 14pt |
| Spasi isi | 1.5 |
| Spasi ringkasan | 1.0 |
| Indentasi paragraf | 1.27cm |
| Penomoran front matter | Romawi kecil (i, ii, iii, ...) |
| Penomoran isi | Arab (1, 2, 3, ...) |
| Format BAB | BAB I, BAB II, ... (angka Romawi) |
| Format subbab | 1.1, 1.1.1, 1.1.1.1 |

## Lisensi

Template ini dibuat berdasarkan PPKI IPB Edisi 4 untuk keperluan penulisan karya ilmiah di IPB University.
