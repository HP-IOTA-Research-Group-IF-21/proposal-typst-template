#import "../utils.typ" as utils

#let chapter-configs(content) = [
  #let heading-numbering-pattern = "I.1.1.1.1.1"
  #let figure-numbering-pattern = "I.1."

  #let heading-numbering(schema) = (..numbers) => {
    if numbers.pos().len() == 1 {
      return [
        Bab #numbering(schema, ..numbers)
      ]
    }
    numbering(schema, ..numbers)
  }

  #set heading(numbering: heading-numbering(heading-numbering-pattern), supplement: [Bab])

  #show figure.where(kind: image): set figure(supplement: "Gambar", numbering: utils.figure-numbering(1, figure-numbering-pattern, image), gap: 1em)
  #show figure.where(kind: table): set figure(supplement: "Tabel", numbering: utils.figure-numbering(1, figure-numbering-pattern, table), gap: 1em)

  #show heading: it => {
    if it.level == 1 {
      return block(width:100%, spacing: 2em)[
        #set align(center)
        #set text(size: 14pt)
        #upper([#counter(heading).display() \ #it.body])]
    }
    block(width:100%, above: 2.5em, below: 1.5em)[
      #set text(size: 12pt)
      #it
    ]
  }

  #content
]