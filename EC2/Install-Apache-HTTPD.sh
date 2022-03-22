sudo yum update
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install -y lynx

# Now issue this command to browse to your web server:
lynx http://localhost

# Type q to exit Lynx
