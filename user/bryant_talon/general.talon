# chrome://extensions/shortcuts
^c m$: "CM "
^Dawn$: "Dawn"
^David$: "David"
^dee pack$: "Dipak"
^da me tro$: "Dmytro"
^da me tree$: "Dmitri"
^why lena$: "Ylena"
^M D$: "MD"
^pre thee$: "Preethi"
^ti sa ra$: "Thisara"
^rake one$:
	user.switcher_focus("iTerm2")
	key(super-3)
	key(super-r)
    "rake\n"
    actions.sleep("200ms")
    key(enter)
^rake two$:
    key(enter)
    user.switcher_focus("Google Chrome")
########## talon create linux app context
key(f8): speech.toggle()
(see|sea|c) <number_small>: "-c{number_small}"
########## focus shortcuts
bar: key(super-t)
^focus desktop: key(super-d)
^focus system tray: key(super-b)
^focus word: app.switcher_focus("Microsoft Word")
########## Work Words
^(ollie|ally): "o11y "
^(ollie|ally|olly) apply$: "o11yapply "
^(ollie|ally|olly) delete$: "o11ydelete "
^(paying|pan): "peng"
^are chana$: "Archana"
^aws$: "aws"
^app$: "app"
(outo serve|auto serve): "autoserv"
^cpe$: "cpe"
^diff$: "diff"
^disco$: "disco"
^don$: "dawn"
^jira$: "jira"
^n l b$: "nlb"
^mds$: "mds"
^non prod$: "nonprod"
^o s d$: "osd"
^obf$: "obf"
^octa$: "okta"
^openssl$: "openssl"
^perf$: "perf"
^pr$: "PR"
^preview$: "prvw"
^(prodding|prod edge)$: "prodeng"
^prod$: "prod"
^san box$: "sbox"
^SRE: "SRE"
^what's my IP: "ifconfig -a| grep ens5 -A 1\n"
##########
^capture box: key("super-shift-5")
^capture screen: key("super-shift-3")
^code$:
	user.switcher_focus("Code")
	#actions.sleep("550ms")
	key(ctrl-down)
^(fox|portal)$: user.switcher_focus("Firefox")
^(chrome)$: user.switcher_focus("Google Chrome")
^copy: edit.copy()
^clap: edit.line_insert_down()
^click: mouse_click(0)
^cross right$:
    user.split_next()
^cross left$:
    user.split_last()
^disk: edit.save()
^double:
    user.mouse_click()    
    user.mouse_click()
# actions.user.notify("Talon awake")
# https://talon.wiki/basic_customization/
^drag delete$:
	user.mouse_drag_end()
	edit.delete()
^drag copy$:
	user.mouse_drag_end()
	edit.copy()
^drag cut$:
	user.mouse_drag_end()
	edit.cut()    
^drag paste$:
	user.mouse_drag_end()
	edit.paste()  
^exit terminal: "exit\n"
^jenkins$: "jenkins"
^json$: "json"
^https$: "https://"
key(keypad_multiply): key("super-shift-a")
key(ctrl-t): 
    speech.toggle()
    #user.microphone_selection_toggle()
    #app.notify("🎉🎉 New cursorless features; see log")
key(keypad_plus): 
	#user.talon_wake()
	speech.enable()    
    # yeti microphone
    user.microphone_select(4)
    # Blue Snowball
    # wireless mouse only
    # user.microphone_select(3)
#key(alt-1): user.microphone_select(1)
key(keypad_minus):
	#user.talon_sleep()
    speech.disable()
    user.microphone_select(1)
    #mouse_sleep()
^mail: user.switcher_focus("Microsoft Outlook")
^zoom$: user.switcher_focus("zoom.us")
^mouse keys$:
    key("alt")
    sleep(300ms)
    key("alt")
    sleep(300ms)
    key("alt")
    sleep(300ms)
    key("alt")
    sleep(300ms)
    key("alt") 
    sleep(300ms)
    key("alt") 
    "mouse keys"
^obsidian: user.switcher_focus("Obsidian")
^prod (edge|eng): "prodeng"
^slack: user.switcher_focus("Slack")
#term: user.switcher_focus("gnome terminal")
^eye term: user.switcher_focus("iTerm2")
^ldap$: "ldap"
^lisa$: "ls -latr\n"
^o s d$: "osd"
^(term|term two|shell)$: user.switcher_focus("iTerm2")
^talent$: "talon"
^thy sodic$: "Thycotic"
^xterm$: user.switcher_focus("x term")
^yum$: "yum"
^(cute|kube) control: "kubectl "
^(cute|kube) config: "kubeconfig"
^(cute|kube): "kube"
########## navigation
next: key("tab")
#nope: edit.undo()
nope: user.clear_last_phrase()
# select from a list with the keyboard
# https://github.com/nriley/talon_community/blob/nriley/core/pick.talon#L15
(pic | pick): key(return)
(pic | pick) <number_small>$:
    key("down:{number_small - 1}")
    sleep(50ms)
    key(return)
(pic | pick) down <number_small>$:
    key("down:{number_small}")
    sleep(50ms)
    key(return)
(pic | pick) up <number_small>$:
    key("up:{number_small}")
    sleep(50ms)
    key(return)
settings: key("super-," )
show mounts: 
    "sudo fdisk -l\n"
    sleep(50ms)
    "lsblk -o NAME,MOUNTPOINT,SIZE,FSTYPE --raw"
    "|grep /|grep -v nvme0n1p1\n"
switch app: key("ctrl-down")
<user.arrow_keys>: user.move_cursor(arrow_keys)
<user.modifiers> (touch | click)$:
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
r sink: "rsync "
run: key(ctrl-f5)
s e s: "AWS SES "
trick: 
    # close zoom if open
    user.zoom_close()
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
########## tab <user.ordinals>: user.tab_jump(ordinals)
tab {self.letter} [{self.letter}]:
    user.run_rpc_command("andreas.focusTab", "{letter_1}{letter_2 or ''}")
########## ~/.talon/user/community/apps/x_term/x_term_linux.py
void: key(space)  
do [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)
then:   skip()
stop:   user.stop_app()
########## Capitalize the first word with a double string
log message <user.text>:
    "{user.formatted_text(text, 'CAPITALIZE_FIRST_WORD,DOUBLE_QUOTED_STRING')}"
########## abbreviations
stack: ": "
hello talon: "hello world"
