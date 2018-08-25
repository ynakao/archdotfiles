# https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc
# Avoiding flake8 errors and type annotation support
# pylint: disable=C0111
from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
from qutebrowser.config.config import ConfigContainer  # noqa: F401
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C010

# load autoconfig
config.load_autoconfig()

# display scrollbar
c.scrolling.bar = True

# disable to show `qutebrowser` from window title
c.window.title_format = '{title}'

# disable autoplay
# this option needs a restart with QtWebEngine on Qt < 5.11
c.content.autoplay = False

# make messages timeout longer (default 2000)
c.messages.timeout = 5000

# tab behavior
# open new tabs in background
c.tabs.background = True
# focus the previous tab when a tab is removed
c.tabs.select_on_remove = 'last-used'
# only show tabs when switching tabs
c.tabs.show = 'switching'

# editor settings
c.editor.command = ["/usr/bin/gvim", "-f", "{}"]

# prevent accidental quit
c.auto_save.session = True
c.confirm_quit = ["always"]
c.aliases['q'] = 'quit --save'
config.bind('<Ctrl-Q>', 'quit --save', mode='normal')
config.bind('ZQ', 'quit --save', mode='normal')

# destruct cookies when quitting qutebrowser
# c.content.cookies.store = False

# change color scheme
# css = '~/repo/solarized-everything-css/css/solarized-all-sites-dark.css'
# config.bind(',n', f'config-cycle content.user_stylesheets {css} "" ;; reload')

# font settings
c.fonts.completion.category = '12pt monospace'
c.fonts.completion.entry = '12pt monospace'
c.fonts.debug_console = '12pt monospace'
c.fonts.downloads = '12pt monospace'
c.fonts.keyhint = '12pt monospace'
c.fonts.messages.error = '12pt monospace'
c.fonts.messages.info = '12pt monospace'
c.fonts.messages.warning = '12pt monospace'
c.fonts.prompts = '12pt monospace'
c.fonts.statusbar = '12pt monospace'
c.fonts.tabs = '12pt monospace'

# key bindings
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.unbind('M', mode='normal')
