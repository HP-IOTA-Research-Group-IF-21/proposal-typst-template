// Utils
#let heading-numbering(schema) = (..numbers) => {
  if numbers.pos().len() == 1 {
    return block(spacing: 1.5em)[
      BAB #numbering(schema, ..numbers)
    ]
  }
  numbering(schema, ..numbers)
}
#let figure-numbering(level, pattern, _kind) = (numbers) => {
  let curr_chap = counter(heading).get().slice(0, level)
  let chap_loc = query(heading.where(level: 1).before(here())).last().location()
  let fig_offset = counter(figure.where(kind: _kind)).at(chap_loc).first()
  if _kind == image {
    [Gambar #numbering(pattern, ..curr_chap, numbers - fig_offset)]
  }
  if _kind == table {
    [Tabel #numbering(pattern, ..curr_chap, numbers - fig_offset)]
  }
}
#let ref-figure-numbering(el, level, pattern, _kind) = {
  let curr_chap = counter(heading).get().slice(0, level)
  let chap_loc = query(heading.where(level: 1).before(here())).last().location()
  let numbers = counter(figure.where(kind: _kind)).at(el.location()).first()
  let fig_offset = counter(figure.where(kind: _kind)).at(chap_loc).first()
  if _kind == image {
    link(el.location(), [Gambar  #numbering(pattern, ..curr_chap, numbers - fig_offset)])
  }
  if _kind == table {
    link(el.location(), [Tabel  #numbering(pattern, ..curr_chap, numbers - fig_offset)])
  }
}
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)
