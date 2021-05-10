echo "deb https://apt.ombi.app/develop jessie main" | sudo tee /etc/apt/sources.list.d/ombi.list
curl -sSL https://apt.ombi.app/pub.key | sudo apt-key add -
sudo apt update && sudo apt install ombi
sudo nano /etc/systemd/system/ombi.service