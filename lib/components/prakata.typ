// ---------------------------------------------------------------------------
// HALAMAN PRAKATA
// ---------------------------------------------------------------------------
#let prakata-page(
  content: [],
  city: "Bogor",
  date: "",
  author: (),
) = {
  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
  )
  set text(font: "Times New Roman", size: 12pt)

  align(center)[
    #text(weight: "bold", size: 14pt)[PRAKATA]
  ]
  v(1cm)

  set par(justify: true, first-line-indent: 1cm)
  content

  v(2cm)

  grid(
    columns: (1fr, auto),
    [],
    align(right)[
      #city, #date \
      \ \
      #author.join(", ")
    ],
  )
}