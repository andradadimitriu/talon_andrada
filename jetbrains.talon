app: jetbrains
-
the other: key(alt-cmd-`)
show (bookmarks|marks): key(alt-shift-e)
toggle (bookmark|mark): user.idea("action ToggleBookmark")
toggle (bookmark|mark) name: key(alt-m)
project show (this|dif): key(cmd-shift-,)
^(double line | dub line | duplicate)$: key(cmd-d)
local history: key(alt-s)
carr up|caret up: key(alt-up)
carr down|carat down: key(alt-down)
find (the more|more): key(cmd-shift-f)
replace word:
    edit.select_word()
    key(cmd-r)
search file: key(cmd-o)
fix this: key(alt-enter)
go go: key(cmd-alt-r)
rerun test: key(cmd-r)
pushy: key(cmd-shift-k)
show (this| if|dif): key(cmd-d)
next (if| dif): key(cmd-;)
last (if|dif): key(cmd-shift-;)
next file (if|dif): key(cmd-shift-])
last file (if| dif): key(cmd-shift-[)
true: "true"
false: "false"
(rewrite|place|replace) next <user.text> [over]: user.idea("find next {user.formatted_text(text, 'PRIVATE_CAMEL_CASE')},action EditorPaste")
(rewrite|place|replace) last <user.text> [over]: user.idea("find prev {user.formatted_text(text, 'PRIVATE_CAMEL_CASE')},action EditorPaste")
