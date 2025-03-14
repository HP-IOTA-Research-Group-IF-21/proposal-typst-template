#import "../../../lib/utils.typ" as utils

= \<Deskripsi Solusi\>

Tujuan penulisan bab ini adalah untuk:
1.	menguraikan hasil analisis yang lebih mendalam tentang persoalan tugas akhir, serta
2.	menguraikan pendekatan dan detil solusi yang dipakai untuk menyelesaikan persoalan tugas akhir.
Judul dan jumlah bab Deskripsi Solusi disesuaikan dengan topik tugas akhir, yang mencerminkan pendekatan yang dilakukan untuk menyelesaikan masalah tugas akhir. Bergantung pada banyaknya materi yang akan dibahas, bab Deskripsi Solusi dapat di pecah menjadi beberapa bab sesuai dengan kebutuhan.
Bab ini, jika memungkinkan, sebaiknya didahului dengan hasil analisis persoalan tugaas akhir. Tujuan utamanya adalah untuk memberikan pemahaman yang lebih baik aspek-aspek penting yang menyebabkan persoalan tugas akhir muncul. Hasil analisis tersebut difokuskan pada hal-hal yang relevan sehingga dapat mengarahkan (memberikan ide) untuk pemikiran jenis solusi yang dapat diterapkan untuk menyelesaikan persoalan tersebut. Untuk topik tugas akhir yang solusinya berupa pengembangan aplikasi, hasil analisis dapat berupa kebutuhan fungsional dan non fungsional.
Bagian terbesar dari bab ini adalah menguraikan dengan detil konsep solusi yang Anda tawarkan.


@table-example
@table-example-2
@ch-image-3
@ch-image-4

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
    )<table-example>
  ]
)

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
    )<table-example-2>
  ]
)

#figure(
  image("../../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-3>
#figure(
  image("../../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-4>



#pagebreak()