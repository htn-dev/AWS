# Integrate Jenkins with AWS
This is a step by step project on how to integrate Jenkins with AWS.


High level overview of steps involved
- Create VPC (Single Public Subnet)
- Create Security groups 
- Spin up EC2 instance, install and configure Jenkins , create AMI out of EC2
- Create permissions to run jobs on worker nodes in Jenkins
- Test with a test project

## Technologies
- AWS (VPC, EC2, IAM)
- Jenkins
- Git
- Maven
