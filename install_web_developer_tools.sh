
#!/bin/bash
echo "Starting Web developing Tools ....."
echo "Start insatlling Apache2"
sudo apt-get install apache2 -y
echo "Rastar Apache "
sudo systemctl restart apache2
echo "#################################"
echo "Install Mysql Server"
echo "#################################"
sudo apt-get install mysql-server -y
echo "#################################"
echo "Install PHP7.3"
echo "#################################"
sudo apt-get install php7.3
echo "Install PHP modules"
echo "#################################"
sudo  apt-get install php-pear php7.3-curl php7.3-dev php7.3-gd php7.3-mbstring php7.3-zip php7.3-mysql php7.3-xml
echo "#################################"
sudo systemctl restart apache2
echo "#################################"
echo "Install Node.js"
echo "#################################"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
echo "#################################"
echo "Install phpMyAdmin"
echo "#################################"
sudo apt-get install phpmyadmin -y
echo "#################################"
echo "Install composer php"
echo "#################################"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo apt-get install composer
echo "#################################"
echo "Install insomnia "
echo "#################################"
# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
# Add public key used to verify code signature
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install insomnia
