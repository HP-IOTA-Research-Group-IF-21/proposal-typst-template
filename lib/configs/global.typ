#import "../utils.typ" as utils

// Constants
#let heading-numbering-pattern = "I.1.1.1.1.1"
#let figure-numbering-pattern = "I.1.1.1.1.1."
#let list-numbering-pattern = "1.a.i."

// Global configs
#let global-configs(contents) = [
  #set page(
    paper: "a4",
    margin: (top: 3cm, right: 3cm, bottom: 3cm, left: 4cm),
  )
  #set par(
    leading: 1.25em,
    spacing: 2em,
    justify: true
  )
  #set text(
    size: 12pt,
    font: "Times New Roman",
    hyphenate: false
  )
  #set heading(numbering: utils.heading-numbering(heading-numbering-pattern))
  #set enum(
    numbering: list-numbering-pattern,
    body-indent: 0.75em,
    indent: 1.25em
  )
  #set list(
    body-indent: 0.75em,
    indent: 1.25em
  )

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
  #show figure: it => {
    if it.kind == table {
      return block(breakable: false, spacing: 2.5em)[
        #set par(spacing: 1.5em)
        #it.counter.display(utils.figure-numbering(1, figure-numbering-pattern, table))
        #it.caption.body
        #it.body
      ]
    }
    block(breakable: false, spacing: 2.5em)[
      #set par(spacing: 1.5em)
      #it.body
      #it.counter.display(utils.figure-numbering(1, figure-numbering-pattern, image))
      #it.caption.body
    ]
  }
  #show ref: it => {
    let el = it.element
    if el != none {
      if el.kind == table {
          utils.ref-figure-numbering(el, 1, figure-numbering-pattern, table)
      }
      if el.kind == image {
          utils.ref-figure-numbering(el, 1, figure-numbering-pattern, image)
      }
    } else {
      it
    }
  }

  #contents
]
