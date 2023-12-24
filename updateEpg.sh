#!/usr/bin/bash

# Script to set the required environment variables, and start the 
# Python script /home/hts/ziggogo-epg/ziggogoepg.py

# This script shoud be executable, and owned by root.
#
# Ron Hermsen
# 2023-11-21
#
# If this script is stared via ssh use:  sudo ./updateEpg.sh &
# If started from another script or rc.local use: /home/hts/updateEpg.sh > /dev/null 

source /home/hts/tvh.env

cd /home/hts/ziggogo-epg
python3 ziggogoepg.py --tvh-username $USER_TVH --tvh-password $AUTH_TVH  --tvh-socket  /home/hts/.config/hts/epggrab/xmltv.sock >> /home/hts/ziggogo-epg/ziggogoepg.log