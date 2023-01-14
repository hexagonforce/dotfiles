## Configuration file for qutebrowser

# Custom key bindings
config.bind('<Ctrl+Shift+y>', 'hint links spawn --detach mpv --force-window yes {hint-url}' )
config.bind('<Ctrl+Shift+p>', 'hint links spawn --detach mpv --no-video --force-window yes {hint-url}')
config.bind('<Ctrl+i>', 'hint images download')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
