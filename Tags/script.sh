#  Find all instances in your account that are tagged with a tag of Project and a value of ERPSystem. 
#  The command should output the full set of parameters available for all seven instances that are tagged Project=ERPSystem
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem"

# Use the --query parameter to limit the output of the previous command to only the instance ID of the discovered instance:
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query 'Reservations[*].Instances[*].InstanceId'

#  Include both the instance ID and the Availability Zone of each instance in your return result
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query 'Reservations[*].Instances[*].{ID:InstanceId,AZ:Placement.AvailabilityZone}'

# Include the value of the Project tag in your output
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem" --query 'Reservations[*].Instances[*].{ID:InstanceId,AZ:Placement.AvailabilityZone,Project:Tags[?Key==`Project`] | [0].Value}'
