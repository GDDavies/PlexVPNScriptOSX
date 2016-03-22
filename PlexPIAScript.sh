# Get IP addresses for plex.tv and write to text file on Desktop
host -t a plex.tv | awk '{print $4}' | egrep ^[1-9] > ~/Library/Application Support/Plex Media Server/PlexIPs.txt

# Assign IPs to array called addresses
IFS=$'\n' read -d '' -r -a addresses < ~/Library/Application Support/Plex Media Server/PlexIPs.txt

# Count number of elements in addresses array
# echo ${#addresses[@]}

# Add routes
for i in ${addresses[@]}
do
sudo route add $i 192.168.1.1
done