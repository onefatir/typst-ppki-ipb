#import "config.typ": _doc-config

// ---------------------------------------------------------------------------
// HALAMAN JUDUL (TITLE PAGE)
// ---------------------------------------------------------------------------
#let title-page(
  title: "",
  author: (),
  nim: (),
  logo: none,
  type: "skripsi",
  year: "",
  department: "",
  faculty: "",
  program-studi: "",
  institution-lines: none,
) = {
  let cfg = _doc-config.at(type)

  let inst-lines = if institution-lines != none {
    institution-lines
  } else {
    let fn = cfg.at("institution-lines")
    fn(department, faculty, program-studi)
  }

  // Keterangan gelar
  let degree-text = cfg.at("degree-text")
  // Tambahkan nama prodi jika degree-text berakhir dengan "Program Studi "
  if degree-text.ends-with("Program Studi ") {
    degree-text = degree-text + program-studi
  }

  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
    numbering: none,
  )
  set text(font: "Times New Roman", size: 14pt)

  v(2cm)
  align(center)[
    #text(weight: "bold", upper(title))
  ]

  v(1fr)
  for name in author {
    align(center)[
      #text(weight: "bold", upper(name))
    ]
  }

  v(1fr)
  align(center)[
    #text(size: 12pt)[
      #for line in degree-text.split("\n") [
        #line \
      ]
    ]
  ]

  v(1fr)
  align(center)[
    #for line in inst-lines [
      #text(weight: "bold", line) \
    ]
    #text(weight: "bold", year)
  ]
}