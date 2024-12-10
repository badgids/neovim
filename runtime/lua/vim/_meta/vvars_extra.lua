--- @meta _
error('Cannot require a meta file')

--- Extra types for vim.v dictionary fields

--- @class vim.v.completed_item
--- @field word? string the text that will be inserted, mandatory
--- abbreviation of "word"; when not empty it is used in the menu instead of "word"
--- @field abbr? string
--- extra text for the popup menu, displayed after "word" or "abbr"
--- @field menu? string
--- more information about the item, can be displayed in a preview window
--- @field info? string
--- @field kind? string single letter indicating the type of completion
--- when non-zero case is to be ignored when comparing items to be equal; when
--- omitted zero is used, thus items that only differ in case are added
--- @field icase? integer
--- when non-zero, always treat this item to be equal when comparing. Which
--- means, "equal=1" disables filtering of this item.
--- @field equal? integer
--- when non-zero this match will be added even when an item with the same word
--- is already present.
--- @field dup? integer
--- when non-zero this match will be added even when it is an empty string
--- @field empty? integer
--- custom data which is associated with the item and available
--- in |v:completed_item|; it can be any type; defaults to an empty string
--- @field user_data? any
--- an additional highlight group whose attributes are combined
--- with |hl-PmenuSel| and |hl-Pmenu| or |hl-PmenuMatchSel| and |hl-PmenuMatch|
--- highlight attributes in the popup menu to apply cterm and gui properties
--- (with higher priority) like strikethrough to the completion items abbreviation
--- @field abbr_hlgroup? string
--- an additional highlight group specifically for setting the highlight
--- attributes of the completion kind. When this field is present, it will
--- override the |hl-PmenuKind| highlight group, allowing for the customization
--- of ctermfg and guifg properties for the completion kind
--- @field kind_hlgroup? string

--- @class vim.v.event
--- Whether the event triggered during an aborting condition (e.g. |c_Esc| or
--- |c_CTRL-C| for |CmdlineLeave|).
--- @field abort? boolean
--- @field chan? integer See |channel-id|
--- @field info? table Dict of arbitrary event data.
--- @field cmdlevel? integer Level of cmdline.
--- @field cmdtype? string Type of cmdline, |cmdline-char|.
--- @field cwd? string Current working directory.
--- @field inclusive? boolean Motion is |inclusive|, else exclusive.
--- @field scope? string Event-specific scope name.
--- Current |operator|. Also set for Ex commands (unlike |v:operator|). For
--- example if |TextYankPost| is triggered by the |:yank| Ex command then
--- `v:event.operator` is "y".
--- @field operator? string
--- Text stored in the register as a |readfile()|-style list of lines.
--- @field regcontents? string
--- Requested register (e.g "x" for "xyy) or the empty string for an unnamed operation.
--- @field regname? string
--- @field regtype? string Type of register as returned by |getregtype()|.
--- @field visual? boolean Selection is visual (as opposed to, e.g., via motion).
--- @field completed_item? vim.v.completed_item
--- Current selected complete item on |CompleteChanged|, Is `{}` when no
--- complete item selected.
--- @field height? integer
--- @field width? integer Height of popup menu on |CompleteChanged|
--- @field row? integer Width of popup menu on |CompleteChanged|
--- Col count of popup menu on |CompleteChanged|, relative to screen.
--- @field col? integer
--- @field size? integer Total number of completion items on |CompleteChanged|.
--- Is |v:true| if popup menu have scrollbar, or |v:false| if not.
--- @field scrollbar? boolean
--- Is |v:true| if the event fired while changing window  (or tab) on |DirChanged|.
--- @field changed_window? boolean
--- @field status? boolean Job status or exit code, -1 means "unknown". |TermClose|
--- @field reason? string Reason for completion being done. |CompleteDone|
--- The word that was selected, empty if abandoned complete. @field complete_word? string
--- @field complete_type? string See |complete_info_mode|