#import "lib/configs/global.typ": global-configs
#import "lib/configs/initial.typ": initial-configs
#import "lib/configs/content.typ": content-configs

#global-configs[
  #initial-configs[
    #include "src/cover.typ"
  ]
  #content-configs[
    #include "src/chapters/ch-1.typ"
    #include "src/chapters/ch-2.typ"
    #include "src/chapters/ch-3.typ"
    #include "src/chapters/ch-4.typ"
    #include "src/references.typ"
  ]
]


