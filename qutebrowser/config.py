config.load_autoconfig()

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind(',v', 'hint links spawn mpv "{hint-url}"')
config.bind(',g', 'hint images download')

config.set('downloads.location.prompt', False)

