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