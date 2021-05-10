###ALL###

#Nginx
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_nginx.sh
chmod +x deploy_nginx.sh
yes | ./deploy_nginx.sh

#Ombi
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_ombi.sh
chmod +x deploy_ombi.sh
yes | ./deploy_ombi.sh

#Radarr
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_radarr.sh
chmod +x deploy_radarr.sh
yes | ./deploy_radarr.sh

#Sonarr
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_sonarr.sh
chmod +x deploy_sonarr.sh
yes | ./deploy_sonarr.sh

#Unifi
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_unifi.sh
chmod +x deploy_unifi.sh
yes | ./deploy_unifi.sh

#qBitTorrent
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_qbt.sh
chmod +x deploy_qbt.sh
yes | ./deploy_qbt.sh

#Emby
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_emby.sh
chmod +x deploy_emby.sh
yes | ./deploy_emby.sh

#Plex
wget https://raw.githubusercontent.com/animanti/public/master/scripts/deploy_plex.sh
chmod +x deploy_plex.sh
yes | ./deploy_plex.sh

rm deploy_all.sh