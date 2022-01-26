# Create the CafeDatabaseSG security group to protect the Amazon RDS instance
aws ec2 create-security-group --group-name CafeDatabaseSG --description "Security group for Cafe database" --vpc-id <CafeInstance VPC ID>

# create the inbound rule for the security group
aws ec2 authorize-security-group-ingress --group-id <CafeDatabaseSG Group ID> --protocol tcp --port 3306 --source-group <CafeSecurityGroup Group ID>

# confirm that the ingress rule was applied appropriately
aws ec2 describe-security-groups --query "SecurityGroups[*].[GroupName,GroupId,IpPermissions]" --filters "Name=group-name,Values='CafeDatabaseSG'"
