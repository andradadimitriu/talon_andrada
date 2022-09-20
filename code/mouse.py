# say "open" followed by the mouse definition.
#
# Examples:
# open twitter
#
# open new google doc.
#qFall
# open community
#
import logging

import time
from user.knausj_talon.code.mouse import Actions
import user.knausj_talon.code.mouse as mouse
from talon import Module, ctrl, actions, ui, Context, app
from urllib.parse import quote_plus
import webbrowser
mod = Module()
ctx = Context()

mod.list('mouse_additional', desc='Mouse commands')
ctx.lists['user.mouse_additional'] = {
    'chip': 'control mouse',
}

@mod.action_class
class Actions:
    def toggle_mouse_gaze():
        """toggles mouse control"""
        if mouse.gaze_job:
            actions.user.mouse_scroll_stop()
        else:
            actions.user.mouse_gaze_scroll()