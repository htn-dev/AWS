Jenkins is an open source automation server which enables developers, cloud engineers, devops practitioners 
around the world to reliably build, test, and deploy their software.


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

Integrate Jenkins with AWS and ran a jenkins job on a worker node:
https://medium.com/@SylvesterYiadom/integrate-jenkins-with-aws-part-i-e51f141b7ec2
