# At first, EBS volumn needed to be created and attached to an EC2 instance on the AWS console
# The EBS volume is attached to the EC2 instance. However, you need to make the volume available to use by formatting and mounting it

# FORMAT the volume with mkfs

sudo mkdir /data

# mount the volume at the directory
sudo mount /dev/xvdf /data

# create a backup of the /etc/fstab file.
sudo cp /etc/fstab /etc/fstab.orig

# Next, find the device’s 128-bit universally unique identifier (UUID). This UUID, unlike the devices’ names, is unique and does not change
sudo blkid

# Save the UUID of /dev/xvdf. We will use it later

# Now that we know the UUID, let’s add it to the /etc/fstab file
sudo nano /etc/fstab

# Add the following line to the file, using the UUID you saved previously:
UUID=aebf131c-6957-451e-8d34-ec978d9581ae  /data  xfs  defaults,nofail  0  2
# Save the file

# unmount the device and then mount all file systems in /etc/fstab.
sudo umount /data
sudo mount -a
