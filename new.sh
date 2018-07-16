
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
echo "Install PHP7.2"
echo "#################################"
sudo apt-get install php7.2
echo "Install PHP modules"
echo "#################################"
sudo  apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml
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

