# talon
got it This is a test to update from another computer

parrot(pop): user.test(f0, f1, f2, power)

packed one two three
one::two::three        
you can find out using talon test last after the command and then looking in the log viewer

dub string apple
"Apple"

git config http.PostBuffer 524288000
git diff --stat --cached

# updating go on mint
https://computingforgeeks.com/how-to-install-go-golang-on-linux-mint/

press super

https://stackoverflow.com/questions/17404316/the-following-untracked-working-tree-files-would-be-overwritten-by-merge-but-i

Try running

git add *
git stash
git pull

This will track all files, remove all of your local changes to those files, and then get the files from the server.

https://talon.wiki/unofficial_talon_docs/
        An example .talon file might look like this:

        # Comments start with a # sign, and they must always be on their own line.
        #
        # This part, the context header, defines under which circumstances this file applies.
        os: windows
        os: linux
        app: Slack
        app: Teams
        # Anything above this (single!) dash is part of the context header.
        -
        # Anything below the dash is part of the body.
        # If there is no dash, then the body starts immediately.

        # These define voice commands.
        ([channel] unread next | goneck): key(alt-shift-down)
        insert code fragment:
            # A single command can perform a sequence of actions.
            insert("``````")
            key(left left left)
            # the number of times the key should be pressed can be specified after a colon
            key(shift-enter:2)
            key(up)

        # This activates the tag 'user.tabs'.
        tag(): user.tabs

        # This adjusts settings (within this file's context).
        settings():
            key_wait = 1.5
