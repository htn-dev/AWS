# This script first uses the command aws ec2 describe-instances to return only a list of instance IDs for the development machines that belong to the ERPSystem project.
# It then passes those values to the aws ec2 create-tags command, which either creates a new tag or (in this case) overwrites an existing tag.

#!/bin/bash

ids=$(aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" "Name=tag:Environment,Values=development" --query 'Reservations[*].Instances[*].InstanceId' --output text)

aws ec2 create-tags --resources $ids --tags 'Key=Version,Value=1.1'
