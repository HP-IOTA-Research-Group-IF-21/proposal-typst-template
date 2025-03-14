#import "lib/configs/global.typ": global-configs
#import "lib/configs/initial.typ": initial-configs
#import "lib/configs/outline.typ": outline-configs
#import "lib/configs/content.typ": content-configs
#import "lib/configs/chapter.typ": chapter-configs
#import "lib/configs/attachment.typ": attachment-configs

#global-configs[
  #initial-configs[
    #include "src/final/cover.typ"
    #include "src/final/approval.typ"
    #include "src/final/statement.typ"
    #include "src/final/abstract.typ"
    #include "src/final/preface.typ"
    #outline-configs[
      #include "src/final/outlines/main.typ"
      #include "src/final/outlines/attachment.typ"
      #include "src/final/outlines/image.typ"
      #include "src/final/outlines/table.typ"
    ]
  ]
  #content-configs[
    #chapter-configs[
      #include "src/final/chapters/ch-1.typ"
      #include "src/final/chapters/ch-2.typ"
      #include "src/final/chapters/ch-3.typ"
      #include "src/final/chapters/ch-4.typ"
      #include "src/final/chapters/ch-5.typ"
    ]
    #include "src/final/references.typ"
    #attachment-configs[
      #include "src/final/attachments/atch-1.typ"
      #include "src/final/attachments/atch-2.typ"
    ]
  ]
]