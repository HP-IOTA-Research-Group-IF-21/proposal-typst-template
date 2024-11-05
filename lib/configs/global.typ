#import "../utils.typ" as utils

// Constants
#let heading-numbering-pattern = "I.1.1.1.1.1"
#let figure-numbering-pattern = "I.1.1.1.1.1."


// Global configs
#let global-configs(contents) = [
  #set page(
    paper: "a4",
    margin: (top: 3cm, right: 3cm, bottom: 3cm, left: 4cm)
  )
  #set par(
    leading: 1.5em,
    spacing: 1.75em
  )
  #set text(
    size: 12pt,
    font: "Times New Roman"
  )
  #set heading(numbering: utils.heading-numbering(heading-numbering-pattern))
  #set figure(numbering: utils.figure-numbering(1, figure-numbering-pattern))
  #set ref(supplement: it => {
    if it.func() == figure {
      return none
    }
    it
  })

  #show heading: it => {
    if it.level == 1 {
      return block(width:100%, spacing: 2em)[
        #set align(center)
        #set text(size: 14pt)
        #upper(it)
      ]
    }
    block(width:100%, above: 2.5em, below: 1.5em)[
      #set text(size: 12pt)
      #it
    ]
  }
  #show figure: it => block(breakable: false)[
    #it.body
    #context it.counter.display(it.numbering)
    #it.caption.body
  ]

  #contents
]
