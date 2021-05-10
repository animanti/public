#sudo apt install gnupg ca-certificates
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
#echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
#sudo apt update
sudo apt update
sudo apt install mono-devel
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493
echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install nzbdrone
mono /opt/NzbDrone/NzbDrone.exe

#Create User
sudo adduser --system --group sonarr
sudo gpasswd -a sonarr sonarr

#Download Service Config
wget https://raw.githubusercontent.com/animanti/public/master/configs/sonarr.service
mv sonarr.service /etc/systemd/system/sonarr.service

systemctl daemon-reload
systemctl enable --now sonarr.service
#sudo systemctl start radarr.service
rm ./deploy_sonarr.sh