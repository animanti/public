#OLD
#sudo apt update
#sudo apt upgrade
#sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
#sudo apt update
#sudo apt install qbittorrent
#gnome-session-properties

#NEW
sudo apt install qbittorrent-nox
#sudo nano /etc/systemd/system/qbittorrent-nox.service

#Create User
sudo adduser --system --group qbtnox
sudo gpasswd -a qbtnox qbtnox

#Download Service Config
wget https://raw.githubusercontent.com/animanti/public/master/configs/qbittorrent-nox.service
mv qbittorrent-nox.service /etc/systemd/system/qbittorrent-nox.service

sudo systemctl daemon-reload
sudo systemctl enable qbittorrent-nox
#sudo systemctl start qbittorrent-nox
#systemctl status qbittorrent-nox
rm ./deploy_qbt.sh