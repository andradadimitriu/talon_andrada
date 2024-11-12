#
# Examples:
# open twitter
#
# open new google doc
#qFall
# open community
#10<div>

import time
from user.knausj_talon.core.app_switcher.app_switcher import Actions
from user.knausj_talon.core.windows_and_tabs.windows_and_tabs_mac import AppActions
from talon import Module, ctrl, actions, ui, Context, app
from user.knausj_talon.apps.chrome.chrome import browser_actions
from urllib.parse import quote_plus
import webbrowser
mod = Module()
ctx = Context()

mod.list('websites_additional', desc='Opening website') 
ctx.lists['user.websites_additional'] = {
    'local': 'http://localhost:3000/',
    'death': 'https://dev.d3h0zdrehj8er4.amplifyapp.com/biletzele',
    'dev': 'https://dev.d3h0zdrehj8er4.amplifyapp.com/biletzele',
    'develop': 'https://dev.d3h0zdrehj8er4.amplifyapp.com/biletzele',
    'master': 'https://master.d3h0zdrehj8er4.amplifyapp.com/biletzele',
    'messages': 'https://web.whatsapp.com/',
    "what's up": 'https://web.whatsapp.com/',
    'audible': 'https://www.audible.co.uk/',
    'twitter': 'https://twitter.com',
    'was': 'https://eu-west-2.console.aws.amazon.com/console/home?nc2=h_ct&src=header-signin&region=eu-west-2',
    'decks': 'https://dexonline.ro/',
    #'trello': 'https://trello.com',
    'gmail': 'https://gmail.com',
    'get hub': 'https://github.com',
    'reddit': 'https://reddit.com',
    'talon docs': 'https://talonvoice.com/docs/index.html',
    'talon chit': 'https://talon-knausj-cheatsheet.netlify.app/',
    'talon cheat': 'https://talon-knausj-cheatsheet.netlify.app/',
    #'youtube': 'https://www.youtube.com/',
    'issues': 'https://github.com/knausj85/knausj_talon',
    'community': 'https://app.slack.com/client/T7FPSMV8F/D02EHCXJJS1',
    #'localhost': 'http://localhost:3000',
    #'rebel': 'https://rebel.netlight.com/',
    'stack overflow': 'https://stackoverflow.com/',
    # git lab
    #'board': 'https://git.sto.netlight.se/feedback-tool/feedback-client/boards',
    #'laugh board': 'https://git.sto.netlight.se/groups/laf-tool/-/boards',
    #'merge': 'https://git.sto.netlight.se/feedback-tool/feedback-client/merge_requests',
    #'laugh merge': 'https://git.sto.netlight.se/laf-tool/laf-client/merge_requests',
    #'back end merge': 'https://git.sto.netlight.se/feedback-tool/feedback-api/merge_requests',
    #'back end board': 'https://git.sto.netlight.se/feedback-tool/feedback-api/boards',
    #
    'google drive': 'https://drive.google.com',
    'drive': 'https://drive.google.com',
    'google keep': 'https://keep.google.com/u/1/',
    'keep': 'https://keep.google.com/u/1/',
    'google docs': 'https://docs.google.com',
    'google slides': 'https://slides.google.com',
    'google sheets': 'https://sheets.google.com',
    'new google doc': 'https://doc.new',
    'google mail': 'https://mail.google.com/mail/u/0/?ogbl#all',
    'google email': 'https://mail.google.com/mail/u/0/?ogbl#all',
    'new google slide': 'https://slide.new',
    'new google sheet': 'https://sheet.new',
    'new calendar': 'https://cal.new',
    'search talon': 'https://search.talonvoice.com',
    'old journal': 'https://docs.google.com/document/d/1tvdDUCn9k_8XP_aLDKPqkkK3nACN4oPE0AIVqhznByo/edit',
    'new journal': 'https://docs.google.com/document/d/1bWWRLSXOmY0whbQWdc0zCZhcxwFTD028ZVr9GfAxjqE/edit',
    'discord': 'https://discord.com/channels/755482110323589210/832675916521537576',
    'flowers': 'https://docs.google.com/spreadsheets/d/1OxvRjVLAJFF3GNy_LbF6rs5MP7F-5yAA3vLOhL7ifYI/edit#gid=0f',
    'focus': 'https://www.focusmate.com/dashboard',
    'code problem': 'https://app.codesignal.com/interview-practice',#
    'code signal': 'https://app.codesignal.com/interview-practice',
    'code she': 'https://app.codesignal.com/interview-practice',
    'code': 'https://app.codesignal.com/interview-practice',
    'react practice': 'https://reactjs.org/docs/context.html',
    'react dogs': 'https://reactjs.org/docs/context.html',
    'learn react': 'https://reactjs.org/docs/context.html',
    'me board': 'https://dunelmmcdev.atlassian.net/jira/software/projects/CREO/boards/226?assignee=6368d7f796243ac755edb6d7',
    'board': 'https://dunelmmcdev.atlassian.net/jira/software/projects/CREO/boards/226',
    'you dome': 'https://mindera.udemy.com/organization/home/',
    'ups': 'https://myapplications.microsoft.com/',
    'you tills': 'https://gitlab.com/dunelm/product/backend-services/tcb-utils'

    #'?????': 'https://??????.com',
}

@mod.action_class
class Actions:
    def go_to_website(website: str):
        """Goes to a specific website"""
        actions.user.switcher_focus("Chrome")
        actions.key('cmd-t')
        browser_actions.go(website)
