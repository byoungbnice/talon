# talon create linux app context
# ~/.talon/user/community/apps/x_term/x_term_linux.py
key(f8): speech.toggle()
hello talon: "hello world"
code: user.switcher_focus("code")
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
nope: edit.undo()
<user.arrow_keys>: user.move_cursor(arrow_keys)
<user.modifiers> (touch | click):
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
portal: user.switcher_focus("firefox")
run: key(ctrl-f5)
slack: user.switcher_focus("slack")
term: user.switcher_focus("gnome terminal")
xterm: user.switcher_focus("x term")
wake: speech.enable()
do [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)
# go
wally: ":="
null: "nil"
name if:
    "if __name__ == '__main__':\n\t"
nil check: 
    "if err != nil {\nreturn err"
    key(down)    
    key(enter)
