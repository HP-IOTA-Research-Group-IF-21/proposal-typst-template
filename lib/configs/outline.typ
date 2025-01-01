#let outline-configs(content) = [
  #show heading: it => {
    set align(center)
    set text(size: 14pt)
    
    block(spacing: 2em)[#upper(it)]
  }

  #content
]