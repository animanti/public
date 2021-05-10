sudo apt update && sudo apt upgrade
sudo wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.5.4.0/emby-server-deb_4.5.4.0_amd64.deb
sudo dpkg -i emby-server-*.deb
rm deploy_emby.sh
