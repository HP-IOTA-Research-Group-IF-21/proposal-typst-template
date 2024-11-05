#let content-configs(content) = [
  #set page(numbering: "1")
  #counter(page).update(1)
  #content
]
