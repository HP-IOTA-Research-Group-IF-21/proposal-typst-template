#import "lib/configs/global.typ": global-configs
#import "lib/configs/initial.typ": initial-configs
#import "lib/configs/outline.typ": outline-configs
#import "lib/configs/content.typ": content-configs
#import "lib/configs/chapter.typ": chapter-configs
#import "lib/configs/attachment.typ": attachment-configs


#global-configs[
  #initial-configs[
    #include "src/proposal/cover.typ"
    #include "src/proposal/approval.typ"
    #outline-configs[
      #include "src/proposal/outlines/main.typ"
      #include "src/proposal/outlines/attachment.typ"
      #include "src/proposal/outlines/image.typ"
      #include "src/proposal/outlines/table.typ"
    ]
  ]
  #content-configs[
    #chapter-configs[
      #include "src/proposal/chapters/ch-1.typ"
      #include "src/proposal/chapters/ch-2.typ"
      #include "src/proposal/chapters/ch-3.typ"
      #include "src/proposal/chapters/ch-4.typ"
    ]
    #include "src/proposal/references.typ"
    #attachment-configs[
      #include "src/proposal/attachments/atch-1.typ"
      #include "src/proposal/attachments/atch-2.typ"
    ]
  ]
]