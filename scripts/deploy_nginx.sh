sudo apt-get update
sudo apt-get install nginx
sudo unlink /etc/nginx/sites-enabled/default
cd etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
wget https://raw.githubusercontent.com/animanti/public/master/configs/reverse-proxy.conf
mv reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
