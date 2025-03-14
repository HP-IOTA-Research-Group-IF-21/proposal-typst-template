// Constants
#let title = [\<CONTOH JUDUL: PERANCANGAN ANTARMUKA SISTEM INFORMASI DI PUSKESMAS DAERAH PEDESAAN MENGGUNAKAN USER CENTERED DESIGN\>]
#let name = [\<NAMA MAHASISWA\>]
#let nim = [\<NIM MAHASISWA\>]
#let month = [\<BULAN\>]
#let year = [\<TAHUN\>]
#let date = [\<tanggal\>]
#let supervisor1 = [\<NAMA_PEMBIMBING_1\>]
#let supervisor2 = [\<NAMA_PEMBIMBING_2\>]
#let nipSupervisor1 = [\<NIP_PEMBIMBING_1\>]
#let nipSupervisor2 = [\<NIP_PEMBIMBING_2\>]

// Global settings
#set par(
  leading: 1.5em,
  justify: false
)

// Body
#grid(rows: (1fr,1fr,1fr), columns: (1fr), align: alignment.center, 
  align(center)[
    #set par(leading: 2em)
    #text(size: 14pt, weight: "bold")[#upper(title)] \
    #v(50pt)
    #text(weight: "bold")[
      Laporan Tugas Akhir
    ]
  ],
  align(center)[
    #text(weight: "bold")[
      Oleh \
      #text(size: 14pt)[
        #upper(name) \
        NIM: #upper(nim) \
        Program Studi Teknik Informatika \
      ]
    ]
    Sekolah Teknik Elektro dan Informatika \
    Institut Teknologi Bandung
  ],
  align(center + horizon)[
    Telah disetujui dan disahkan sebagai Laporan Tugas Akhir \
    di Bandung, pada tanggal #date 
    #grid(rows: (1fr), columns: (1fr,1fr), align: alignment.center, 
      align(center + horizon)[
        Pembimbing I
        #v(60pt)
        #underline(supervisor1) \
        NIP. #nipSupervisor1
      ],
      align(center + horizon)[
        Pembimbing II
        #v(60pt)
        #underline(supervisor2) \
        NIP. #nipSupervisor2
      ]
    )
  ],
)

#pagebreak()
