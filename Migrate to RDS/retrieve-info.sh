# Determine the Instance ID, Instance Type, Public DNS name, Public IP address, and Availability Zone of the CafeInstance
# Use an AWS CLI command that also returns the VPC ID of its VPC, and the Group ID of its security group

aws ec2 describe-instances --filters "Name=tag:Name,Values= CafeInstance" --query "Reservations[*].Instances[*].[InstanceId,InstanceType,PublicDnsName,PublicIpAddress,Placement.AvailabilityZone,VpcId,SecurityGroups[*].GroupId]"

# Determine the IPv4 CIDR block of the Cafe VPC
aws ec2 describe-vpcs --vpc-ids <CafeInstance VPC ID> --filters "Name=tag:Name,Values= Cafe VPC" --query "Vpcs[*].CidrBlock"

# Determine the Subnet ID and IPv4 CIDR block of Cafe Public Subnet 1, which is the only subnet in the VPC. Subtitute <CafeInstance VPC ID> with the actual VPC ID
aws ec2 describe-subnets --filters "Name=vpc-id,Values=<CafeInstance VPC ID>" --query "Subnets[*].[SubnetId,CidrBlock]"

# Determine the list of Availability Zones in the Region. In the command below, substitute <region> with the actual region name
aws ec2 describe-availability-zones --filters "Name=region-name,Values=<region>" --query "AvailabilityZones[*].ZoneName"

