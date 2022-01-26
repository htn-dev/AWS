# Create the CafeDatabaseSG security group to protect the Amazon RDS instance
aws ec2 create-security-group --group-name CafeDatabaseSG --description "Security group for Cafe database" --vpc-id <CafeInstance VPC ID>

# create the inbound rule for the security group
aws ec2 authorize-security-group-ingress --group-id <CafeDatabaseSG Group ID> --protocol tcp --port 3306 --source-group <CafeSecurityGroup Group ID>

# confirm that the ingress rule was applied appropriately
aws ec2 describe-security-groups --query "SecurityGroups[*].[GroupName,GroupId,IpPermissions]" --filters "Name=group-name,Values='CafeDatabaseSG'"


# Create a private subnet within the address range of the VPC, but that does not overlap with the address range of any other subnet in the VPC
aws ec2 create-subnet --vpc-id <CafeInstance VPC ID> --cidr-block 10.200.2.0/23 --availability-zone <CafeInstance Availability Zone>
