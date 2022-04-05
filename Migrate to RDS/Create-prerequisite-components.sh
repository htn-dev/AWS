# Create the CafeDatabaseSG security group to protect the Amazon RDS instance
aws ec2 create-security-group --group-name CafeDatabaseSG --description "Security group for Cafe database" --vpc-id <CafeInstance VPC ID>

# create the inbound rule for the security group
aws ec2 authorize-security-group-ingress --group-id <CafeDatabaseSG Group ID> --protocol tcp --port 3306 --source-group <CafeSecurityGroup Group ID>

# confirm that the ingress rule was applied appropriately
aws ec2 describe-security-groups --query "SecurityGroups[*].[GroupName,GroupId,IpPermissions]" --filters "Name=group-name,Values='CafeDatabaseSG'"

# Create the CafeDB Private Subnet 1. This subnet hosts the Amazon RDS database instance. 
# It is a private subnet that is defined in the same Availability Zone as the CafeInstance.
# This subnet is within the address range of the VPC, but that does not overlap with the address range of any other subnet in the VPC
aws ec2 create-subnet --vpc-id <CafeInstance VPC ID> --cidr-block 10.200.2.0/23 --availability-zone <CafeInstance Availability Zone>

# Create the CafeDB Private Subnet 2. This is the extra subnet that is required to form the database subnet group. 

# It is an empty private subnet that is defined in a different Availability Zone than the CafeInstance.
aws ec2 create-subnet --vpc-id <CafeInstance VPC ID> --cidr-block 10.200.10.0/23 --availability-zone <availability-zone>

# Create the CafeDB Subnet Group which consists of the two private subnets that you created in the previous steps, Cafe Private Subnet 1 and Cafe Private Subnet 2.
aws rds create-db-subnet-group --db-subnet-group-name "CafeDB Subnet Group" --db-subnet-group-description "DB subnet group for Cafe" --subnet-ids <Cafe Private Subnet 1 ID> <Cafe Private Subnet 2 ID> --tags "Key=Name,Value= CafeDatabaseSubnetGroup"
