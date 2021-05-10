sudo apt update && sudo apt upgrade
sudo wget https://downloads.plex.tv/plex-media-server-new/1.22.3.4392-d7c624def/debian/plexmediaserver_1.22.3.4392-d7c624def_amd64.deb
sudo dpkg -i plexmediaserver_*.deb
rm deploy_plex.sh
