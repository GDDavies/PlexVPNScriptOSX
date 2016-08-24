# PlexVPNScriptOSX

This OS X application/script adds Plex.tv IP addresses to your routes so that they do not go through your VPN. This is useful for when your VPN provider does not allow port forwarding, or it is not working correctly.

# How to Use
Run the ‘PlexVPN’ application (PlexVPN.app/Contents) and you will be prompted for your password. You should then see confirmation that the routes have been added.

There is also a script available if you prefer, just open Terminal, type 'sudo' (remove quotes) and drag the script in to the Terminal window. Press enter and again you will be prompted for your password. You should then see confirmation of some IPs being added.

This process needs to be completed each time your Mac turns on again, so it may be worth adding the application as a Login Item.

*Update*

Cron script now included which is set to run every hour. If you want to change this you will need to have a look at Cron syntax (http://www.nncron.ru/help/EN/working/cron-format.htm) but this should be sufficient for most.
