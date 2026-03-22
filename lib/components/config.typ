// =============================================================================
// IPB University - Template Karya Ilmiah (PPKI Edisi 4)
// =============================================================================
// Template Typst untuk penulisan karya ilmiah sesuai Pedoman Penulisan
// Karya Ilmiah (PPKI) Institut Pertanian Bogor, Edisi 4.
//
// Mendukung: Laporan Akhir (D3), Skripsi (S1), Tesis (S2), Disertasi (S3)
// =============================================================================

// ---------------------------------------------------------------------------
// KONFIGURASI PER JENIS DOKUMEN
// ---------------------------------------------------------------------------
#let _doc-config = (
  "laporan-akhir": (
    label: "Laporan Akhir",
    degree: "Ahli Madya",
    degree-text: "Laporan Akhir\nsebagai salah satu syarat untuk memperoleh gelar\nAhli Madya pada\nProgram Studi ",
    institution-lines: (dept, fac, prodi) => (
      prodi,
      fac,
      "INSTITUT PERTANIAN BOGOR",
      "BOGOR",
    ),
    max-abstract-words: 200,
    max-ringkasan-pages: 1,
    cover-color: none,
  ),
  "skripsi": (
    label: "Skripsi",
    degree: "Sarjana",
    degree-text: "Skripsi\nsebagai salah satu syarat untuk memperoleh gelar\nSarjana pada\nProgram Studi ",
    institution-lines: (dept, fac, prodi) => (
      prodi,
      fac,
      "INSTITUT PERTANIAN BOGOR",
      "BOGOR",
    ),
    max-abstract-words: 200,
    max-ringkasan-pages: 1,
    cover-color: none,
  ),
  "skripsi-fkh": (
    label: "Skripsi",
    degree: "Sarjana",
    degree-text: "Skripsi\nsebagai salah satu syarat untuk memperoleh gelar\nSarjana pada\nFakultas Kedokteran Hewan",
    institution-lines: (dept, fac, prodi) => (
      dept,
      fac,
      "INSTITUT PERTANIAN BOGOR",
      "BOGOR",
    ),
    max-abstract-words: 200,
    max-ringkasan-pages: 1,
    cover-color: none,
  ),
  "tesis": (
    label: "Tesis",
    degree: "Magister Sains",
    degree-text: "Tesis\nsebagai salah satu syarat untuk memperoleh gelar\nMagister Sains pada\nProgram Studi ",
    institution-lines: (dept, fac, prodi) => (
      prodi,
      fac,
      "INSTITUT PERTANIAN BOGOR",
      "BOGOR",
    ),
    max-abstract-words: 250,
    max-ringkasan-pages: 2,
    cover-color: none,
  ),
  "disertasi": (
    label: "Disertasi",
    degree: "Doktor",
    degree-text: "Disertasi\nsebagai salah satu syarat untuk memperoleh gelar\nDoktor pada\nProgram Studi ",
    institution-lines: (dept, fac, prodi) => (
      prodi,
      fac,
      "INSTITUT PERTANIAN BOGOR",
      "BOGOR",
    ),
    max-abstract-words: 250,
    max-ringkasan-pages: 2,
    cover-color: none,
  ),
)