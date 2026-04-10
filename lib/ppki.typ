#import "components/utilities.typ": *
#import "components/numbering.typ": *
#import "components/cover.typ": *
#import "components/title.typ": *
#import "components/copyright.typ": *
#import "components/approval.typ": *
#import "components/statement.typ": *
#import "components/abstract.typ": *
#import "components/overview.typ": *
#import "components/prakata.typ": *
#import "components/lists.typ": *
#import "components/lampiran.typ": *
#import "components/config.typ": *

// ---------------------------------------------------------------------------
// TEMPLATE UTAMA
// ---------------------------------------------------------------------------
#let ipb-thesis(
  // -- Metadata --
  type: "skripsi",             // "laporan-akhir" | "skripsi" | "skripsi-fkh" | "tesis" | "disertasi"
  title: "",                   // Judul dalam bahasa Indonesia
  title-en: "",                // Judul dalam bahasa Inggris (opsional)
  author: (),                  // Nama lengkap penulis
  nim: (),                     // Nomor Induk Mahasiswa
  department: "",              // Nama departemen
  faculty: "",                 // Nama fakultas/sekolah
  program-studi: "",           // Nama program studi
  year: "",                    // Tahun lulus

  // -- Pembimbing & Penguji --
  supervisors: (),             // Daftar nama pembimbing: ("Prof. Dr. A", "Dr. B")
  examiners: (),               // Daftar nama penguji

  // -- Abstrak --
  abstract-id: none,           // Isi abstrak bahasa Indonesia (content block)
  keywords-id: (),             // Kata kunci bahasa Indonesia
  abstract-en: none,           // Isi abstrak bahasa Inggris (content block)
  keywords-en: (),             // Keywords bahasa Inggris

  // -- Ringkasan --
  ringkasan: none,             // Isi ringkasan (content block)
  summary: none,               // Isi summary (content block)

  // -- Prakata --
  prakata: none,               // Isi prakata (content block)
  prakata-city: "Bogor",
  prakata-date: "",

  // -- Pengesahan --
  approval-date: "",

  // -- Logo & Aset --
  logo: none,                  // Path ke file logo IPB

  // -- Kustomisasi institusi --
  institution-lines: none,     // Override baris institusi: ("DEPT", "FAK", "IPB", "BOGOR")

  // -- Opsi tampilan --
  show-cover: true,
  show-title-page: true,
  show-copyright: true,
  show-statement: true,
  show-approval: true,
  show-abstract-id: true,
  show-abstract-en: true,
  show-ringkasan: true,
  show-summary: true,
  show-prakata: true,
  show-daftar-isi: true,
  show-daftar-tabel: true,
  show-daftar-gambar: true,
  show-daftar-lampiran: false,

  // -- Konten utama --
  body,
) = {
  // Validasi tipe dokumen
  assert(
    type in _doc-config,
    message: "Tipe dokumen tidak valid: " + type + ". Gunakan: " + _doc-config.keys().join(", "),
  )

  let cfg = _doc-config.at(type)

  // =========================================================================
  // PENGATURAN GLOBAL DOKUMEN
  // =========================================================================
  set document(
    title: title,
    author: author,
  )

  set text(
    font: "Times New Roman",
    size: 12pt,
    lang: "id",
  )

  set par(
    justify: true,
    leading: 0.65em,       // 1 spasi (single spacing) sesuai Lampiran 16 poin 5
    first-line-indent: (amount: 1cm, all: true), // menjorok 1 cm untuk semua paragraf termasuk setelah heading
  )

  // Atur heading
  set heading(numbering: ipb-heading-numbering)

  // Enum dan list di bawah sub-subbab (level 3): marker sejajar dengan heading (0.5cm)
  // pad(left: 1cm) → body teks di 1cm, marker hang ke ~0.5cm (sejajar heading sub-subbab)
  show enum: it => context {
    if counter(heading).get().len() == 3 {
      pad(left: 1cm)[#it]
    } else {
      it
    }
  }

  show list: it => context {
    if counter(heading).get().len() == 3 {
      pad(left: 1cm)[#it]
    } else {
      it
    }
  }

  // Paragraf di bawah sub-subbab (2.1.1): geser 0.5cm agar sejajar level heading 3
  show par: it => context {
    if counter(heading).get().len() == 3 {
      pad(left: 0.5cm)[#it]
    } else {
      it
    }
  }

  // Bab (I, II, dst.): centered, bold, huruf kapital, 14pt (Lampiran 16 x poin 9, Lampiran 17)
  // Format: "II TINJAUAN PUSTAKA" (angka Romawi + judul, tanpa kata "BAB")
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    [
      #set text(size: 14pt, weight: "bold")
      #set par(first-line-indent: 0pt)
      #if it.numbering != none {
        let num = counter(heading).display(it.numbering)
        align(center)[
          #num #h(0.5em) #upper(it.body)
        ]
      } else {
        align(center)[
          #upper(it.body)
        ]
      }
    ]
    v(0.7cm)
  }

  // Subbab (2.1): tepi kiri, bold (Lampiran 16 poin 10, Lampiran 17)
  // Jarak: 2 spasi dari paragraf/bab di atasnya, 1 spasi ke paragraf di bawahnya
  show heading.where(level: 2): it => {
    // v(0.55cm) // ~2 spasi dari paragraf di atasnya (2 × single line height)
    v(0.55cm) // ~2 spasi dari paragraf di atasnya (2 × single line height)
    [
      #set text(size: 12pt, weight: "bold")
      #set par(first-line-indent: 0pt)
      #if it.numbering != none {
        let num = counter(heading).display(it.numbering)
        [#num #h(0.5em) #it.body]
      } else {
        it.body
      }
    ]
    v(0cm) // ~1 spasi ke paragraf di bawahnya (normal line progression)
  }

  // Sub-subbab (2.1.1): menjorok 0.5cm, TIDAK bold (Lampiran 17)
  // Jarak: 1,5 spasi dari paragraf di atasnya, 1 spasi ke paragraf di bawahnya
  show heading.where(level: 3): it => {
    v(0.25cm) // ~1.5 spasi dari paragraf di atasnya
    [
      #set text(size: 12pt, weight: "regular")
      #set par(first-line-indent: 0pt)
      #if it.numbering != none {
        let num = counter(heading).display(it.numbering)
        pad(left: 0.5cm)[#num #h(0.5em) #it.body]
      } else {
        pad(left: 0.5cm)[#it.body]
      }
    ]
    v(0cm) // ~1 spasi ke paragraf di bawahnya
  }

  // Sub-sub-subbab (2.1.1.1): menjorok 1cm, TIDAK bold (Lampiran 17)
  // Catatan: pengebaban 4 tingkat tidak disarankan (Lampiran 17)
  show heading.where(level: 4): it => {
    v(0.2cm)
    [
      #set text(size: 12pt, weight: "regular")
      #set par(first-line-indent: 0pt)
      #if it.numbering != none {
        let num = counter(heading).display(it.numbering)
        pad(left: 1cm)[#num #h(0.5em) #it.body]
      } else {
        pad(left: 1cm)[#it.body]
      }
    ]
    v(0cm)
  }

  // Atur figure
  show figure: it => {
    set par(justify: true)
    v(0.5cm)
    it
    v(0.5cm)
  }

  show figure.caption: it => {
    set text(size: 11pt)
    set par(first-line-indent: 0pt)
    it
  }

  // Tabel: caption di atas, gambar: caption di bawah
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: image): set figure.caption(position: bottom)

  // =========================================================================
  // BAGIAN AWAL (FRONT MATTER) — Nomor halaman Romawi kecil
  // =========================================================================

  // -- Sampul (Cover) --
  if show-cover {
    cover-page(
      title: title,
      author: author,
      nim: nim,
      logo: logo,
      tipe: type,
      year: year,
      department: department,
      faculty: faculty,
      program-studi: program-studi,
      institution-lines: institution-lines,
    )
  }

  // -- Halaman Judul (Title Page) --
  if show-title-page {
    pagebreak(weak: true)
    title-page(
      title: title,
      author: author,
      nim: nim,
      logo: none,
      type: type,
      year: year,
      department: department,
      faculty: faculty,
      program-studi: program-studi,
      institution-lines: institution-lines,
    )
  }

  // -- Halaman Hak Cipta --
  if show-copyright {
    pagebreak(weak: true)
    copyright-page(year: year, type: type)
  }

  // -- Halaman Pernyataan --
  if show-statement {
    pagebreak(weak: true)
    statement-page(
      author: author,
      nim: nim,
      title: title,
      type: type,
    )
  }

  // -- Halaman Pengesahan --
  if show-approval and examiners.len() > 0 {
    pagebreak(weak: true)
    approval-page(
      type: type,
      examiners: examiners,
      date: approval-date,
    )
  }

  // Mulai penomoran halaman Romawi dari sini
  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    numbering: "i",
    number-align: right + top,
  )
  counter(page).update(1)

  // -- Abstrak Indonesia --
  if show-abstract-id and abstract-id != none {
    pagebreak(weak: true)
    abstract-page(
      author: author,
      nim: nim,
      title: title,
      supervisors: supervisors,
      content: abstract-id,
      keywords: keywords-id,
      lang: "id",
    )
  }

  // -- Abstrak Inggris --
  if show-abstract-en and abstract-en != none {
    pagebreak(weak: true)
    abstract-page(
      author: author,
      nim: nim,
      title: if title-en != "" { title-en } else { title },
      supervisors: supervisors,
      content: abstract-en,
      keywords: keywords-en,
      lang: "en",
    )
  }

  // -- Ringkasan --
  if show-ringkasan and ringkasan != none {
    pagebreak(weak: true)
    ringkasan-page(
      author: author,
      nim: nim,
      title: title,
      supervisors: supervisors,
      content: ringkasan,
      lang: "id",
    )
  }

  // -- Summary --
  if show-summary and summary != none {
    pagebreak(weak: true)
    ringkasan-page(
      author: author,
      nim: nim,
      title: if title-en != "" { title-en } else { title },
      supervisors: supervisors,
      content: summary,
      lang: "en",
    )
  }

  // -- Prakata --
  if show-prakata and prakata != none {
    pagebreak(weak: true)
    prakata-page(
      content: prakata,
      city: prakata-city,
      date: prakata-date,
      author: author,
    )
  }

  // -- Daftar Isi --
  if show-daftar-isi {
    pagebreak(weak: true)
    daftar-isi()
  }

  // -- Daftar Tabel --
  if show-daftar-tabel {
    pagebreak(weak: true)
    daftar-tabel()
  }

  // -- Daftar Gambar --
  if show-daftar-gambar {
    pagebreak(weak: true)
    daftar-gambar()
  }

  // -- Daftar Lampiran --
  if show-daftar-lampiran {
    pagebreak(weak: true)
    daftar-lampiran()
  }

  // =========================================================================
  // BAGIAN UTAMA (MAIN BODY) — Nomor halaman Arab
  // =========================================================================
  pagebreak(weak: true)
  set page(
    numbering: "1",
    number-align: right + top,
  )
  counter(page).update(1)

  body
}
