// ---------------------------------------------------------------------------
// HALAMAN ABSTRAK
// ---------------------------------------------------------------------------
#let abstract-page(
  author: "",
  nim: "",
  title: "",
  supervisors: (),
  content: [],
  keywords: (),
  lang: "id",
) = {
  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
  )
  set text(font: "Times New Roman", size: 12pt)

  let heading-text = if lang == "id" { "ABSTRAK" } else { "ABSTRACT" }

  align(center)[
    #text(weight: "bold", size: 14pt, heading-text)
  ]
  v(1cm)

  // Info line: NAMA PENULIS. Judul. Dibimbing oleh ...
  set par(justify: true, first-line-indent: 0pt)
  [
    #text(weight: "bold")[#upper(author)]. #title.
    #if lang == "id" [Dibimbing oleh ] else [Supervised by ]
    #supervisors.map(s => text(weight: "bold", upper(s))).join(", ").
  ]

  v(0.5cm)

  // Isi abstrak (single paragraph)
  set par(justify: true, first-line-indent: 1cm)
  content

  v(0.5cm)

  // Kata kunci
  set par(first-line-indent: 0pt)
  if lang == "id" {
    [_Kata kunci: #keywords.join(", ")_]
  } else {
    [_Keywords: #keywords.join(", ")_]
  }
}