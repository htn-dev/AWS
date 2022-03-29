# This file shows how to move the web root of Apache server to the new volume.

# Move the document root directory’s content from /var/www/html to the new mount point directory /data.
# Copy the document root directory’s content to the new location using rsync:
sudo rsync -av /var/www/html /data

# Next, we need to modify Apache server’s configuration file and make it use the new directory.
# Open and edit the configuration file:
