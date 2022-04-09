# Update linux repository
sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y java-1.8.0-openjdk-devel

# repository that provides 'daemonize'
sudo amazon-linux-extras install epel -y

# Import public key for jenkins
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

# nsure jenkins is up and running
sudo systemctl status jenkins
