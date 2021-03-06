# This file shows how to move the web root of Apache server to the new volume.

# Move the document root directory’s content from /var/www/html to the new mount point directory /data.
# Copy the document root directory’s content to the new location using rsync:
sudo rsync -av /var/www/html /data

# Next, we need to modify Apache server’s configuration file and make it use the new directory.
# Open and edit the configuration file:
sudo nano /etc/httpd/conf/httpd.conf 

# In the document, find this section:
      DocumentRoot "/var/www/html"

      #
      # Relax access to content within /var/www.
      #
      <Directory "/var/www">
          AllowOverride None
          # Allow open access:
          Require all granted
      </Directory>

      # Further relax access to the default document root:
      <Directory "/var/www/html">

# Modify DocumentRoot and Directory “/var/www/html” to use the new location:
      DocumentRoot "/data"

      #
      # Relax access to content within /var/www.
      #
      <Directory "/var/www">
          AllowOverride None
          # Allow open access:
          Require all granted
      </Directory>

      # Further relax access to the default document root:
      <Directory "/data">
      

# Save the file. Now, let’s test that the Apache server is actually configured to use the new location for its document root directory.
# Remove the index.html file you created before:
sudo rm /var/www/html/index.html

# Refresh your web browser. Your web site will not show your custom index.html homepage. We need to restart the Apache server in order to use apply the new configuration.
# Restart the Apache server:
sudo systemctl restart httpd

# Refresh again your browser. Your web site will be up and running. The Apache server uses the new location for its document root directory.
