# By default, Apache httpd stores web content in the /var/www directory
# To allow the ec2-user user to manage files in the default root directory for your Apache web server, modify the ownership and permissions of the /var/www directory

# To set file permissions for the Apache web server, add the www group to your EC2 instance
sudo groupadd www

# Add the ec2-user user to the www group
sudo usermod -a -G www ec2-user

#Log out by issuing the exit command to refresh your permissions and include the new www group.
#Log back in again and verify that the www group exists with the groups command

# Change the group ownership of the /var/www directory and its contents to the www group.
sudo chgrp -R www /var/www

# Change the directory permissions of /var/www and its subdirectories to add group write permissions and set the group ID on subdirectories created in the future.
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} +

