# Get IP addresses for plex.tv and write to text file on Desktop
host -t a plex.tv | awk '{print $4}' | egrep ^[1-9] > ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign IPs to array called addresses
IFS=$'\n' read -d '' -r -a addresses < ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign default gateway to text file on Desktop
netstat -nr | grep -w 'default' | awk '{print $2}' > ~/Library/Application\ Support/Plex\ Media\ Server/GatewayIP.txt

# Assign Gateway IP to array called Gateway
IFS=$'\n' read -d '' -r -a gateway < ~/Library/Application\ Support/Plex\ Media\ Server/GatewayIP.txt

# Add routes
for i in ${addresses[@]}
do
sudo route add $i ${gateway[0]}
done