sudo yum update
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install -y lynx

# Now issue this command to browse to your web server:
lynx http://localhost

# You will initially see an error in the browser that reads HTTP 301 - Forbidden
# This is the default response for new installations of Apache httpd
# Don't worry - this is expected and will show the Apache test page after a few seconds
# When you add some web content in the next section, this error wil not be shown
# Type q to exit Lynx
