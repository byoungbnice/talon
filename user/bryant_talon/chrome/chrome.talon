#app: chrome
app: Google Chrome
-
tag(): browser
tag(): user.tabs

^letters$: key("ctrl-shift-space")
^profile switch$: user.chrome_mod("shift-m")
^rango$: key("ctrl-r")
^looks good to me$: "LGTM!"
^tab search$: user.chrome_mod("shift-a")
^tab search <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)
