from talon import Module, Context, actions

mod = Module()
ctx = Context()

mod.apps.microsoft_word = r"""
os: mac
and app.bundle: com.microsoft.Word
"""

ctx.matches = r"""
os: mac
app: microsoft_word
"""

# @mod.action_class
# class Actions:
