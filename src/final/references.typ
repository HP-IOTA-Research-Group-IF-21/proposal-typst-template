#set heading(supplement: [header])
#show heading: it => {
  set align(center)
  set text(size: 14pt)
  
  block(spacing: 2em)[#upper(it)]
}

#bibliography(
  "../../assets/bibs/references.bib",
  title: upper([Daftar Referensi])
)

#pagebreak()