#import "../../lib/utils.typ" as utils

= Contoh Judul Lampiran <atch>

== Contoh Judul Anak Lampiran <atch>
#lorem(100)

@table-example-atch-1
@ch-image-atch-1
@ch-image-atch-2

#par(
  leading: 1em,
  spacing: 2em,
  justify: true,
  [
    #figure(
      table(
        columns: (1fr,2fr),
        align: (left, left),
        fill: (_, y) => if calc.odd(y) { rgb("EAF2F5") },
        stroke: utils.frame(rgb("21222C")),
        [*column 1*], [*column 2*],
        [row 1 column 1], [row 1 column 2],
        [row 2 column 1], [row 2 column 2],
      ),
      caption: [Example table],
    )<table-example-atch-1>
  ]
)

#figure(
  image("../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-atch-1>

#figure(
  image("../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-atch-2>

#pagebreak()