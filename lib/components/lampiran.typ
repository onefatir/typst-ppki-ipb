// ---------------------------------------------------------------------------
// FUNGSI LAMPIRAN
// ---------------------------------------------------------------------------
#let lampiran(number: 1, caption: "", body) = {
  figure(
    kind: "lampiran",
    supplement: [Lampiran],
    caption: [#caption],
    body,
  )
}

#let lampiran-plain(caption: [], body) = {
  show figure.where(kind: "lampiran"): it => align(left)[
    #it.caption
    #set par(first-line-indent: 0pt)
    #it.body
  ]
  figure(
    kind: "lampiran",
    supplement: [Lampiran],
    caption: caption,
    body,
  )
}