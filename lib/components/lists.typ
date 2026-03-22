// ---------------------------------------------------------------------------
// DAFTAR ISI / TABEL / GAMBAR / LAMPIRAN
// ---------------------------------------------------------------------------
#let daftar-isi() = {
  heading(level: 1, numbering: none)[DAFTAR ISI]
  v(0.5cm)
  outline(
    title: none,
    indent: 1.5em,
    depth: 4,
  )
}

#let daftar-tabel() = {
  heading(level: 1, numbering: none)[DAFTAR TABEL]
  v(0.5cm)
  outline(
    title: none,
    target: figure.where(kind: table),
  )
}

#let daftar-gambar() = {
  heading(level: 1, numbering: none)[DAFTAR GAMBAR]
  v(0.5cm)
  outline(
    title: none,
    target: figure.where(kind: image),
  )
}

#let daftar-lampiran() = {
  heading(level: 1, numbering: none)[DAFTAR LAMPIRAN]
  v(0.5cm)
  outline(
    title: none,
    target: figure.where(kind: "lampiran"),
  )
}