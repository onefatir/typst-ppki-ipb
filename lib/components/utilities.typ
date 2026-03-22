// ---------------------------------------------------------------------------
// UTILITAS INTERNAL
// ---------------------------------------------------------------------------

// Konversi angka ke Romawi
#let _to-roman(n) = {
  let result = ""
  let num = n
  let values = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1)
  let symbols = ("M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I")
  for i in range(values.len()) {
    while num >= values.at(i) {
      result += symbols.at(i)
      num -= values.at(i)
    }
  }
  result
}

// Halaman kosong (blank page)
#let _blank-page() = {
  pagebreak(weak: true)
  page(header: none, footer: none)[]
}