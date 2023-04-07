config.load_autoconfig()

config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind(';v', 'hint links spawn mpv "{hint-url}"')
config.bind(';g', 'hint images download')
config.set('hints.chars', 'arstdhneiovk')

config.set('downloads.location.prompt', False)
tab_bg_color = '#6272A4'
config.set('colors.tabs.selected.even.bg', tab_bg_color)
config.set('colors.tabs.selected.odd.bg', tab_bg_color)

