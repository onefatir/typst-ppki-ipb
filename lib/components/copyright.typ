// ---------------------------------------------------------------------------
// HALAMAN HAK CIPTA (COPYRIGHT PAGE)
// ---------------------------------------------------------------------------
#let copyright-page(
  year: "",
  type: "skripsi",
) = {
  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
    numbering: none,
  )
  set text(font: "Times New Roman", size: 12pt)

  v(1fr)

  align(center)[
    © Hak Cipta milik IPB, tahun #year \
    Hak Cipta dilindungi Undang-Undang
  ]

  v(1cm)

  set par(justify: true, first-line-indent: 1cm)

  [
    _Dilarang mengutip sebagian atau seluruh karya tulis ini tanpa mencantumkan atau menyebutkan sumbernya. Pengutipan hanya untuk kepentingan pendidikan, penelitian, penulisan karya ilmiah, penyusunan laporan, penulisan kritik, atau tinjauan suatu masalah, dan pengutipan tersebut tidak merugikan kepentingan IPB._

    _Dilarang mengumumkan dan memperbanyak sebagian atau seluruh karya tulis ini dalam bentuk apa pun tanpa izin IPB._
  ]

  v(1fr)
}