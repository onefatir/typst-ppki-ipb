#import "utilities.typ": _to-roman

// ---------------------------------------------------------------------------
// HEADING NUMBERING (BAB / SUBBAB)
// ---------------------------------------------------------------------------
// Format penomoran: BAB I, 1.1, 1.1.1, 1.1.1.1
#let ipb-heading-numbering(..nums) = {
  let n = nums.pos()
  if n.len() == 1 {
    // Level 1: BAB I, BAB II, dst.
    _to-roman(n.at(0))
  } else {
    // Level 2+: 1.1, 1.1.1, dst.
    n.map(str).join(".")
  }
}