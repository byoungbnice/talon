from talon import noise, actions


def on_cluck(active: bool):
    # Talon is awake
    print("on_cluck (pop): talent is awake")
    """
    if actions.speech.enabled():
        actions.user.mouse_on_pop()
    # In sleep mode
    else:
        actions.user.talon_wake_on_pop()
    """
    
noise.register("pop", on_cluck)