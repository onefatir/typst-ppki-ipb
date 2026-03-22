#import "config.typ": _doc-config

// ---------------------------------------------------------------------------
// HALAMAN PERNYATAAN (STATEMENT PAGE)
// ---------------------------------------------------------------------------
#let statement-page(
  author: "",
  nim: "",
  title: "",
  type: "skripsi",
) = {
  let cfg = _doc-config.at(type)

  set page(
    margin: (top: 3cm, bottom: 3cm, left: 4cm, right: 3cm),
    header: none,
    footer: none,
  )
  set text(font: "Times New Roman", size: 12pt)
  set par(justify: true, first-line-indent: 1cm)

  align(center)[
    #text(weight: "bold", size: 14pt)[PERNYATAAN MENGENAI #upper(cfg.at("label")) DAN \
    SUMBER INFORMASI SERTA PELIMPAHAN HAK CIPTA]
  ]

  v(1cm)

  [
    Dengan ini saya menyatakan bahwa #lower(cfg.at("label")) berjudul "#title" adalah benar karya saya dengan arahan dari komisi pembimbing dan belum diajukan dalam bentuk apa pun kepada perguruan tinggi mana pun. Sumber informasi yang berasal atau dikutip dari karya yang diterbitkan maupun tidak diterbitkan dari penulis lain telah disebutkan dalam teks dan dicantumkan dalam Daftar Pustaka di bagian akhir #lower(cfg.at("label")) ini.

    Dengan ini saya melimpahkan hak cipta dari karya tulis saya kepada Institut Pertanian Bogor.
  ]

  v(2cm)

  grid(
    columns: (1fr, 1fr),
    align(left)[Bogor, ............... ],
    align(center)[
      #author \
      NIM #nim
    ],
  )
}