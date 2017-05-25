# Get IP addresses for plex.tv and write to text file in Library
host -t a plex.tv | awk '{print $4}' | egrep ^[1-9] > ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign IPs to array called addresses
IFS=$'\n' read -d '' -r -a addresses < ~/Library/Application\ Support/Plex\ Media\ Server/PlexIPs.txt

# Assign default gateway to variable called gateway
gateway=`netstat -nr | grep -w 'default' | head -1 | awk '{print $2}'`
echo $gateway

# Delete routes
for i in ${addresses[@]}
do
sudo route delete $i $gateway
done
