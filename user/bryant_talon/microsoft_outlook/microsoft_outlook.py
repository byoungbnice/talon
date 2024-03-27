from talon import Module, Context, actions

mod = Module()
ctx = Context()

mod.apps.microsoft_outlook = r"""
os: mac
and app.bundle: com.microsoft.Outlook
"""

ctx.matches = r"""
os: mac
app: microsoft_outlook
"""

# @mod.action_class
# class Actions:
