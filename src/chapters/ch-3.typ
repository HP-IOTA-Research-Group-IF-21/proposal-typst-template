#import "../../lib/utils.typ" as utils

= Analisis Masalah dan Rancangan solusi <main>

Tujuan utama penulisan bab ini adalah untuk menguraikan rencana penyelesaian masalah tugas akhir I.. Bab ini mencakup antara lain:
+ Deskripsi dan analisis persoalan yang terkait dengan Rumusan Masalah, misalnya menjelaskan secara detail latar belakang dan masalah yang menjadi dasar munculnya topik, menunjukkan gap/celah antara kondisi saat ini dengan kondisi yang diharapkan, dan kaitan antara sistem/aplikasi yang dikembangkan dengan sistem/aplikasi lain yang terkait.
+ Analisis solusi yang terdiri dari pilihan alternatif solusi yang dapat digunakan untuk setiap permasalahan berdasarkan hasil studi literatur atau survei, pemilihan solusi beserta justifikasinya.
+ Deskripsi umum solusi yang dipilih, mencakup:
  + Modul/subsistem/komponen yang akan dikembangkan untuk menyelesaikan masalah, berikut penjelasannya.
  + Alur umum algoritma atau langkah-langkah pengembangan sistem dan penjelasannya.
  + Penggunaan kakas yang diperlukan
Dianjurkan untuk menggunakan diagram sebagai pendukung penjelasan bagian ini.

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
  image("../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-3>
#figure(
  image("../../assets/images/Iota_logo.png", width: 80%),
  caption: [ch1],
)<ch-image-4>



#pagebreak()