#let initial-configs(content) = [
  #show heading: it => {
    set align(center)
    set text(size: 14pt)
    
    block(spacing: 2em)[#upper(it)]
  }
  #set heading(supplement: [header])
  #set page(numbering: "i")
  #content
]
