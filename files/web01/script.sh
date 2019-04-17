#!/bin/bash
sudo yum  update
#### make sure ssh is enabled
sudo systemctl enable ssh
sudo service sshd restart

#### install htppd 
sudo yum install -y httpd
sudo cp /home/ec2-user/web01/www/* /var/www/html/
ls -lthr /var/www/html/
sudo systemctl enable httpd
sudo service httpd restart
##### install mysql 
sudo yum install mysql-server -y

#####
cd /var/www/html
sudo wget http://wordpress.org/latest.tar.gz 
sudo tar -xzvf latest.tar.gz
sudo mv wordpress blog

