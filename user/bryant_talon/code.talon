app: code
app: visual studio
app: visual studio code
-
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