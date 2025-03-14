// Constants
#let title = [\<CONTOH JUDUL: PERANCANGAN ANTARMUKA SISTEM INFORMASI DI PUSKESMAS DAERAH PEDESAAN MENGGUNAKAN USER CENTERED DESIGN\>]
#let name = [\<NAMA MAHASISWA\>]
#let nim = [\<NIM MAHASISWA\>]
#let month = [\<BULAN\>]
#let year = [\<TAHUN\>]

// Global settings
#set page(
  paper: "a4",
  margin: 3cm,
  numbering: none
)
#set par(
  leading: 1.5em,
  justify: false
)

// Body
#grid(rows: (1fr,1fr,1fr,1fr,1fr,1fr), columns: (1fr), align: alignment.center, 
  align(center)[
    #set par(leading: 2em)
    #text(size: 14pt, weight: "bold")[#upper(title)]
  ],
  align(center + horizon)[
    #text(size: 14pt, weight: "bold")[
      Laporan Tugas Akhir
    ]
  ],
  align(center + horizon)[
    #text(weight: "bold")[
      Disusun sebagai syarat kelulusan tingkat sarjana
    ]
  ],
  align(center + horizon)[
    #text(weight: "bold")[
      Oleh \
      #text(size: 14pt)[
        #upper(name) \
        NIM: #upper(nim)
      ]
    ]
  ],
  align(center + horizon)[
    #image("../../assets/images/itb-logo.png", height: 80%)
  ],
  align(center + bottom)[
    #text(size: 14pt, weight: "bold")[
      PROGRAM STUDI TEKNIK INFORMATIKA \
      SEKOLAH TEKNIK ELEKTRO & INFORMATIKA \
      INSTITUT TEKNOLOGI BANDUNG \
      #upper(month) #upper(year)
    ]
  ],
)

#pagebreak()
