#import "./config.typ": _doc-config
// ---------------------------------------------------------------------------
// HALAMAN SAMPUL (COVER)
// ---------------------------------------------------------------------------
#let cover-page(
  title: "",
  author: "",
  nim: "",
  logo: none,
  type: "skripsi",
  year: "",
  department: "",
  faculty: "",
  program-studi: "",
  institution-lines: none,
) = {
  let cfg = _doc-config.at(type)

  // Hitung baris institusi
  let inst-lines = if institution-lines != none {
    institution-lines
  } else {
    let fn = cfg.at("institution-lines")
    fn(department, faculty, program-studi)
  }

  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
    numbering: none,
  )

  set text(font: "Times New Roman", size: 14pt)

  // Judul di posisi atas (~5cm dari atas)
  v(2cm)
  align(center)[
    #text(weight: "bold", upper(title))
  ]

  // Nama penulis (~12cm dari atas)
  v(1fr)
  align(center)[
    #text(weight: "bold", upper(author))
    #if nim != "" [
      \ #text(size: 12pt, nim)
    ]
  ]

  // Logo (~18cm dari atas)
  v(1fr)
  if logo != none {
    align(center)[
      #image(logo, width: 3cm)
    ]
  }

  // Blok institusi (~23.7cm dari atas)
  v(1fr)
  align(center)[
    #for line in inst-lines [
      #text(weight: "bold", line) \
    ]
    #text(weight: "bold", year)
  ]
}