#import "../utils.typ" as utils

// Constants
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
  #set enum(
    numbering: list-numbering-pattern,
    body-indent: 0.75em,
    indent: 1.25em
  )
  #set list(
    body-indent: 0.75em,
    indent: 1.25em
  )

  #show figure.where(kind: image): set figure(supplement: "Gambar", numbering: utils.figure-numbering(1, figure-numbering-pattern, image), gap: 1em)
  #show figure.where(kind: table): set figure(supplement: "Tabel", numbering: utils.figure-numbering(1, figure-numbering-pattern, table,), gap: 1em)
  #show figure: set figure.caption(separator: " ")

  #show outline.entry.where(level: 1): it => {
    if it.element.has("kind") {
      let childs = it.body.fields().children
      
      return link(it.element.location())[#childs.at(0) #childs.at(2) #it.element.caption.body #box(width: 1fr, repeat[.]) #it.page]
    } else {
      return upper(strong(it))
    }
  }

  #contents
]
