#!/bin/bash

mv ~/Downloads/Plex\ VPN/PlexVPN.sh ~/Library/Application\ Support/Plex\ Media\ Server/

(crontab -l 2>/dev/null; echo “0 * * * * ~/Library/Application\ Support/Plex\ Media\ Server/PlexVPN.sh") | crontab -
