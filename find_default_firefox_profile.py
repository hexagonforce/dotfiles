#!/usr/bin/env python3

import configparser
import sys
import os
from pathlib import Path

config = configparser.ConfigParser()
profiles_path = Path(os.environ['HOME']) / '.mozilla/firefox/profiles.ini'
try:
    config.read(profiles_path)
except:
    print("Failed to read Firefox profiles", file=sys.stderr)
    sys.exit(1)

for section in config.sections():
    if config[section].get('Default') == '1':
        print(config[section]['Path'])
        sys.exit(0)
