# Get IP addresses for plex.tv and write to text file in Library
host -t a plex.tv | awk '{print $4}' | egrep ^[1-9] > ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign IPs to array called addresses
IFS=$'\n' read -d '' -r -a addresses < ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign default gateway to variable called gateway
gateway=`route get default | grep gateway | awk '{print $2}'`

# Add routes
for i in ${addresses[@]}
do
sudo route add $i $gateway
done