#import "config.typ": _doc-config

// ---------------------------------------------------------------------------
// HALAMAN PENGESAHAN / TIM PENGUJI
// ---------------------------------------------------------------------------
#let approval-page(
  type: "skripsi",
  examiners: (),
  date: "",
) = {
  let cfg = _doc-config.at(type)

  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
  )
  set text(font: "Times New Roman", size: 12pt)

  v(1fr)

  if type == "laporan-akhir" {
    // Laporan akhir: single examiner
    [Penguji pada ujian Laporan Akhir: ]
    if examiners.len() > 0 {
      [#examiners.at(0)]
    } else {
      [Nama lengkap dan gelar]
    }
  } else {
    // Skripsi, tesis, disertasi: tim penguji
    [Tim Penguji pada Ujian #cfg.at("label"):]
    v(0.5cm)
    for (i, name) in examiners.enumerate() {
      [#(i + 1). #name \ ]
    }
  }

  if date != "" {
    v(1cm)
    align(right)[Tanggal disetujui: #date]
  }

  v(1fr)
}