// ---------------------------------------------------------------------------
// HALAMAN RINGKASAN / SUMMARY
// ---------------------------------------------------------------------------
#let ringkasan-page(
  author: "",
  nim: "",
  title: "",
  supervisors: (),
  content: [],
  lang: "id",
) = {
  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
  )
  set text(font: "Times New Roman", size: 12pt)
  set par(justify: true, leading: 0.65em) // single space

  let heading-text = if lang == "id" { "RINGKASAN" } else { "SUMMARY" }

  align(center)[
    #text(weight: "bold", size: 14pt, heading-text)
  ]
  v(1cm)

  // Info line
  set par(first-line-indent: 0pt)
  [
    #text(weight: "bold")[#upper(author)]. #title.
    #if lang == "id" [Dibimbing oleh ] else [Supervised by ]
    #supervisors.map(s => text(weight: "bold", upper(s))).join(", ").
  ]

  v(0.5cm)

  set par(justify: true, first-line-indent: 1cm)
  content
}