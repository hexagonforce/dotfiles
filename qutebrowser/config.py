config.load_autoconfig()

config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind(';v', 'hint links spawn mpv "{hint-url}"')
config.bind(';g', 'hint images download')
config.bind('j', 'scroll-px 0 96')
config.bind('k', 'scroll-px 0 -96')
config.set('hints.chars', 'arstdhneiocm')

config.set('downloads.location.prompt', False)
config.source('qutebrowser-themes/themes/onedark.py')

tab_bg_color = '#61AFEF'
tab_text_color = '#282C34'
config.set('colors.tabs.selected.even.bg', tab_bg_color)
config.set('colors.tabs.selected.even.fg', tab_text_color)
config.set('colors.tabs.selected.odd.bg', tab_bg_color)
config.set('colors.tabs.selected.odd.fg', tab_text_color)
