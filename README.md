Preparation

Create a file in /home/hts/ named tvh.env with the user and password used by Kodi.
with default ownership and attributes.
touch /home/hts/tvh.env
echo <username> > /home/hts/tvh.env
echo <passwd> >> /home/hts/tvh.env

The file /home/hts/updateEpg.sh should be owned by root and excutable:
sudo chown root:root /home/hts/updateEpg.sh
sudo chmod +x /home/hts/updateEpg.sh

Add the script to cron to execute once a day e.g. 16:00 hours.

# verify current crontab config
sudo crontab -l
# edit crontab
sudo crontab -e
0 16 * * * /home/hts/updateEpg.sh