#let attachment-configs(content) = [
  #let heading-numbering(schema) = (..numbers) => {
    if numbers.pos().len() == 1 {
      return [
        Lampiran #numbering(schema, ..numbers).
      ]
    }
    numbering(schema, ..numbers)
  }

  #set heading(numbering: heading-numbering("A.1.1.1.1.1"))
  #counter(heading).update(0)

  #show heading: it => {
    if it.level == 1 {
      return block(width:100%, spacing: 2em)[
        #set text(size: 14pt)
        #upper([#it])
      ]}
    block(width:100%, above: 2.5em, below: 1.5em)[
      #set text(size: 12pt)
      #it
    ]
  }

  #content
]
