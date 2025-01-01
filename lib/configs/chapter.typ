#let chapter-configs(content) = [
  #let heading-numbering(schema) = (..numbers) => {
    if numbers.pos().len() == 1 {
      return [
        Bab #numbering(schema, ..numbers)
      ]
    }
    numbering(schema, ..numbers)
  }

  #set heading(numbering: heading-numbering("I.1.1.1.1.1"), supplement: [Bab])

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