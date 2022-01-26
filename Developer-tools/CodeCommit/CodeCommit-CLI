# Create a Server from an Amazon Linux 2 AMI

sudo yum update -y

# Create IAM CodeCommit Credentials
# Create user from IAM
# Add AWSCodeCommitFullAccess policy to the new user
# Download .csv file

# Install Git
sudo yum install git -y

# new user > Security Credentials > GenerateunderHTTPS Git credentials for AWS CodeCommit > Download credentials
aws configure

# create a CodeCommit repository
aws codecommit create-repository --repository-name RepoFromCLI --repository-description "My demonstration repository"

# clone the repositoryto the server
# Clone URL > Clone HTTPS
git clone [paste the URL from the clipboard]

# Add file to Git
git add <File name>

# Commit file to the local repository
git commit -m "added <File name>"

# Verify the file was committed:
git log

# Push the change to the CodeCommit repository:
git push -u origin main
