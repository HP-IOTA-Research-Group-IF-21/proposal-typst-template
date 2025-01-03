#import "lib/configs/global.typ": global-configs
#import "lib/configs/initial.typ": initial-configs
#import "lib/configs/outline.typ": outline-configs
#import "lib/configs/content.typ": content-configs
#import "lib/configs/chapter.typ": chapter-configs
#import "lib/configs/attachment.typ": attachment-configs


#global-configs[
  #initial-configs[
    #include "src/cover.typ"
    #include "src/approval.typ"
    #outline-configs[
      #include "src/outlines/main.typ"
      #include "src/outlines/attachment.typ"
      #include "src/outlines/image.typ"
      #include "src/outlines/table.typ"
    ]
  ]
  #content-configs[
    #chapter-configs[
      #include "src/chapters/ch-1.typ"
      #include "src/chapters/ch-2.typ"
      #include "src/chapters/ch-3.typ"
      #include "src/chapters/ch-4.typ"
    ]
    #include "src/references.typ"
    #attachment-configs[
      #include "src/attachments/atch-1.typ"
      #include "src/attachments/atch-2.typ"
    ]
  ]
]


