// Utils
#let figure-numbering(level, pattern, _kind) = (numbers) => {
  let curr_chap = counter(heading).get().slice(0, level)
  let chap_loc = query(heading.where(level: 1).before(here())).last().location()
  let fig_offset = counter(figure.where(kind: _kind)).at(chap_loc).first()
  [#numbering(pattern, ..curr_chap, numbers - fig_offset)]
}
#let frame(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)
