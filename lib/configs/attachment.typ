#import "../utils.typ" as utils

#let attachment-configs(content) = [
  #let heading-numbering-pattern = "A.1.1.1.1.1"
  #let figure-numbering-pattern = "A.1."

  #let heading-numbering(schema) = (..numbers) => {
    if numbers.pos().len() == 1 {
      return [
        Lampiran #numbering(schema, ..numbers).
      ]
    }
    numbering(schema, ..numbers)
  }

  #set heading(numbering: heading-numbering(heading-numbering-pattern), supplement: [Lampiran])
  #counter(heading).update(0)

  #show figure.where(kind: image): set figure(
    supplement: "Gambar",
    numbering: utils.figure-numbering(1, figure-numbering-pattern, image),
    gap: 1em,
  )
  #show figure.where(kind: table): set figure(
    supplement: "Tabel",
    numbering: utils.figure-numbering(1, figure-numbering-pattern, table),
    gap: 1em,
  )
  #show figure.where(kind: raw): set figure(
    supplement: "Kode",
    numbering: utils.figure-numbering(1, figure-numbering-pattern, raw),
    gap: 1em,
  )

  #show heading: it => {
    if it.level == 1 {
      return block(width: 100%, spacing: 2em)[
        #set text(size: 14pt)
        #upper([#it])
      ]
    }
    block(width: 100%, above: 2.5em, below: 1.5em)[
      #set text(size: 12pt)
      #it
    ]
  }

  #content
]
