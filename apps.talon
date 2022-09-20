focus by charm | focus player:
    user.switcher_focus("PyCharm")
save it: key(cmd-s)
pasty: edit.paste()
spasty|special paste|spaced: key(cmd-shift-v)

sticky:
    user.switcher_focus("Stickies")
    key(cmd-m)
#google word commands, moved to a different file, with the appropriate identification/filter
bullet point: key(cmd-shift-8)
inside (angles | angle | acute | candle):
	insert("<>")
	key(left)
(two dot|to do) :
    insert("//TODO")
(two dot|to do)  <user.text>:
    insert("//TODO")
    insert(text)
downer:
    edit.page_down()
    user.mouse_scroll_down()
    repeat(4)

