# At first, EBS volumn needed to be created and attached to an EC2 instance on the AWS console

# The EBS volume is attached to the EC2 instance. However, you need to make the volume available to use by formatting and mounting it

## FORMAT the volume with mkfs

sudo mkdir /data

# mount the volume at the directory
sudo mount /dev/xvdf /data

# create a backup of the /etc/fstab file.
sudo cp /etc/fstab /etc/fstab.orig

# Next, find the device’s 128-bit universally unique identifier (UUID). This UUID, unlike the devices’ names, is unique and does not change
