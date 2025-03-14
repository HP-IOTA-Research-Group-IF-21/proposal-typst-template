#import "../../lib/configs/global.typ": global-configs
#import "../../lib/configs/initial.typ": initial-configs
#import "../../lib/configs/outline.typ": outline-configs
#import "../../lib/configs/content.typ": content-configs
#import "../../lib/configs/chapter.typ": chapter-configs
#import "../../lib/configs/attachment.typ": attachment-configs


#global-configs[
  #initial-configs[
    #include "cover.typ"
    #include "approval.typ"
    #outline-configs[
      #include "outlines/main.typ"
      #include "outlines/attachment.typ"
      #include "outlines/image.typ"
      #include "outlines/table.typ"
    ]
  ]
  #content-configs[
    #chapter-configs[
      #include "chapters/ch-1.typ"
      #include "chapters/ch-2.typ"
      #include "chapters/ch-3.typ"
      #include "chapters/ch-4.typ"
    ]
    #include "references.typ"
    #attachment-configs[
      #include "attachments/atch-1.typ"
      #include "attachments/atch-2.typ"
    ]
  ]
]