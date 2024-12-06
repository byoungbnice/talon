app: code
app: visual studio
app: visual studio code
-
^clone (replay|sit|script|scrip)$: 
	edit.save()
    sleep(200ms)
    key("cmd-a")
    sleep(200ms)
    key("cmd-c")
    sleep(200ms)
    user.switcher_focus("Google Chrome")
    sleep(200ms)
    edit.file_start()
^death$: "def"
^(get|git) blame$: 
    key(alt-cmd-g b)
^go d$: 
	edit.save()
    sleep(200ms)
	user.switcher_focus("iTerm2")
    sleep(200ms)
	key(up)
    sleep(200ms)
	key(enter)
    sleep(200ms)
    user.switcher_focus("Google Chrome")
    sleep(200ms)
    edit.file_start()
^show hats$: key("super-h")
#^open file$: key("ctrl-o")
^open file$: key("super-o")
^push$: key(end)
^go file <user.text>: 
    key("super-p")
    "{text}"
^go file$: key("super-p pageup:3")
^open folder: key("ctrl-k ctrl-o")
^problems$:  key("cmd-shift-m")
^word wrap$:  key("alt-z")