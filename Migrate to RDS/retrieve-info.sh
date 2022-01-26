# Determine the Instance ID, Instance Type, Public DNS name, Public IP address, and Availability Zone of the CafeInstance. 
# Use an AWS CLI command that also returns the VPC ID of its VPC, and the Group ID of its security group


aws ec2 describe-instances --filters "Name=tag:Name,Values= CafeInstance" --query "Reservations[*].Instances[*].[InstanceId,InstanceType,PublicDnsName,PublicIpAddress,Placement.AvailabilityZone,VpcId,SecurityGroups[*].GroupId]"

# Determine the IPv4 CIDR block of the Cafe VPC
aws ec2 describe-vpcs --vpc-ids <CafeInstance VPC ID> --filters "Name=tag:Name,Values= Cafe VPC" --query "Vpcs[*].CidrBlock"
