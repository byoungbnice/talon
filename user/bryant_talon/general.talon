# chrome://extensions/shortcuts
########## talon create linux app context
key(f8): speech.toggle()
########## focus shortcuts
focus taskbar: key(super-t)
focus desktop: key(super-d)
focus system tray: key(super-b)
focus word: app.switcher_focus("Microsoft Word")
########## Work Words
(ollie|ally): "o11y "
(ollie|ally|olly) apply: "o11yapply "
(ollie|ally|olly) delete: "o11ydelete "
(paying|pan): "peng"
aws: "AWS"
app: "app"
cpe: "cpe"
diff: "diff"
disco: "disco"
don: "dawn"
dmytro: "Dmytro"
: "jira"
mds: "mds"
non: "nonprod"
obf: "obf"
octa: "okta"
openssl: "openssl"
perf: "perf"
pr: "PR"
preview: "prvw"
(prodding|prod edge): "prodeng"
prod: "prod"
san box: "sbox"
SRE: "SRE"
##########
capture portion: key("super-shift-5")
capture screen: key("super-shift-3")
code:  
	user.switcher_focus("Code")
	#actions.sleep("550ms")
	key(ctrl-down)
#(fox|portal): user.switcher_focus("firefox")
(chrome|fox|portal): user.switcher_focus("Google Chrome")
copy: edit.copy()
clap: edit.line_insert_down()
click: mouse_click(0)
cross right: 
    user.split_next()
cross left: 
    user.split_last()
disk: edit.save()
double: 
    user.mouse_click()    
    user.mouse_click()
drowse: speech.disable()#: key(keypad_{number})
# ./user/andreas_talon/core/modes/modes.py
# actions.user.notify("Talon awake")
# https://talon.wiki/basic_customization/
drag delete:
	user.mouse_drag_end()
	edit.delete()
drag copy:
	user.mouse_drag_end()
	edit.copy()
drag cut:
	user.mouse_drag_end()
	edit.cut()    
drag paste:
	user.mouse_drag_end()
	edit.paste()  
exit terminal: "exit\n"
jenkins: "jenkins"
key(ctrl-t): speech.toggle()
key(keypad_plus): 
	#user.talon_wake()
	speech.enable()    
key(keypad_minus): 
	#user.talon_sleep()
    speech.disable()
    #mouse_sleep()
mail: user.switcher_focus("Microsoft Outlook")
mouse keys: 
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
notes: user.switcher_focus("Notes")
slack: user.switcher_focus("Slack")
#term: user.switcher_focus("gnome terminal")
eye term: user.switcher_focus("iTerm2")
ldap: "ldap"
term: user.switcher_focus("iTerm2")
term two: user.switcher_focus("iTerm2")
talent: "talon"
xterm: user.switcher_focus("x term")
yum: "yum"
########## git 
get: "git "
get add: "git add "
get branch: "git branch\n"
get clone: "git clone "
get commit: "git commit "
get pull: "git pull\n"
get push: "git push "
get remove: "git rm "
get status: "git status\n"
########## navigation
next: key("tab")
#nope: edit.undo()
nope: user.clear_last_phrase()
# select from a list with the keyboard
# https://github.com/nriley/talon_community/blob/nriley/core/pick.talon#L15
(pic | pick): key(return)
(pic | pick) <number_small>:
    key("down:{number_small - 1}")
    sleep(50ms)
    key(return)
(pic | pick) down <number_small>:
    key("down:{number_small}")
    sleep(50ms)
    key(return)
(pic | pick) up <number_small>:
    key("up:{number_small}")
    sleep(50ms)
    key(return)
settings: key("super-," )
switch app: key("ctrl-down")
<user.arrow_keys>: user.move_cursor(arrow_keys)
<user.modifiers> (touch | click):
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
run: key(ctrl-f5)
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
