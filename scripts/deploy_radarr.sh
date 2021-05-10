#RADARR
#Install Dotnet https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#2004-
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-5.0

#Create User
sudo adduser --system --group radarr
sudo gpasswd -a svcmedia radarr

#Download Service Config
wget https://raw.githubusercontent.com/animanti/public/master/configs/radarr.service
mv /radarr.service /etc/systemd/system/radarr.service

#Install Radarr https://wiki.servarr.com/Radarr_System#update_to_net_core_version
wget --content-disposition 'http://radarr.servarr.com/v1/update/master/updatefile?os=linux&runtime=netcore&arch=x64'
sudo systemctl stop radarr
sudo mv /opt/Radarr /opt/Radarr.old
tar -xvzf Radarr*.linux-core-x64.tar.gz
sudo mv Radarr/ /opt
sudo chown -R svcmedia:radarr /opt/Radarr
sudo rm -rf /opt/Radarr.old
sudo rm -rf Radarr*.linux-core-x64.tar.gz
sudo nano -e /etc/systemd/system/radarr.service
	/opt/Radarr/Radarr
systemctl daemon-reload
sudo systemctl start radarr.service
rm ./deploy_radarr.sh