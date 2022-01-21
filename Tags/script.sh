#  Find all instances in your account that are tagged with a tag of Project and a value of ERPSystem. 
#  The command should output the full set of parameters available for all seven instances that are tagged Project=ERPSystem
aws ec2 describe-instances --filter "Name=tag:Project,Values=ERPSystem"


