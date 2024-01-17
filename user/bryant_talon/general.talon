########## talon create linux app context
key(f8): speech.toggle()
########## focus shortcuts
focus taskbar: key(super-t)
focus desktop: key(super-d)
focus system tray: key(super-b)
code: user.switcher_focus("code")
(fox|portal): user.switcher_focus("firefox")
slack: user.switcher_focus("slack")
term: user.switcher_focus("gnome terminal")
xterm: user.switcher_focus("x term")
########## git 
get: "git "
get add: "git add "
get clone: "git clone "
get pull: "git pull "
get push: "git push "
get remove: "git rm "
get status: "git status "
get commit: "git commit "
########## navigation
copy: edit.copy()
clap: edit.line_insert_down()
click: mouse_click(0)
cross right: 
    user.split_next()
cross left: 
    user.split_last()
disk: edit.save()
double: 
    user.mouse_click    
    user.mouse_click
drowse: speech.disable()
next: key("tab")
nope: edit.undo()
<user.arrow_keys>: user.move_cursor(arrow_keys)
<user.modifiers> (touch | click):
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
run: key(ctrl-f5)
sense: sentence
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
stack: ":"
hello talon: "hello world"