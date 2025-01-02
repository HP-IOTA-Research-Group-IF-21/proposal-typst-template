#import "../utils.typ" as utils

// Constants
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

  #show figure: set figure.caption(separator: " ")

  #show outline.entry.where(level: 1): it => {
    if it.element.has("kind") {
      let childs = it.body.fields().children

      return link(it.element.location())[#childs.at(0) #childs.at(2) #it.element.caption.body #box(width: 1fr, repeat[.]) #it.page]
    }  
    let pageType = it.body.fields().children.at(1).fields().text

    if pageType == "Bab" {
      return strong(upper(it))
    }
    if pageType == "Lampiran" {
      return strong(it)
    }
    return it
  }

  #contents
]
