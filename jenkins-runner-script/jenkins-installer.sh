#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \  
 /usr/share/keyrings/jenkins-keyring.asc > /dev/null


# Update system packages
sudo apt update
#apt list --upgradable  

# Install Java 11 (recommended by Jenkins)
sudo apt install -y openjdk-11-jdk-headless
sudo apt-get install fontconfig openjdk-17-jre

# Wait before installing Jenkins (you can adjust the time if needed)
echo "Waiting for 30 seconds before installing the Jenkins package..."
#sleep 30

# Add Jenkins Repository and Key
echo "Adding Jenkins repository..."
#sudo wget -q -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/keys/jenkins.io.key
#sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
sudo wget -q -O - https://pkg.jenkins.io/keys/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

#sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins.asc
#sudo wget -q -O - https://pkg.jenkins.io/keys/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc
# Add Jenkins repository to the apt sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

#echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
#echo deb [signed-by=/usr/share/keyrings/jenkins.asc] https://pkg.jenkins.io/debian-stable all main | sudo tee /etc/apt/sources.list.d/jenkins.list
# Update apt package list to include the Jenkins repository
sudo apt-get update
sudo apt upgrade -y

# Install Jenkins
echo "Installing Jenkins..."
sudo apt-get install jenkins -y

# Install fontconfig (optional) and OpenJDK 17 if needed for other applications
#sudo apt-get install -y fontconfig openjdk-17-jre

# Check if Jenkins repository is correctly added
sudo cat /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install jenkins -y
# Install Terraform
echo "Waiting for 30 seconds before installing Terraform..."
#sleep 30

# Install Terraform
#echo "Installing Terraform..."
#wget https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_linux_386.zip
#yes | sudo apt-get install unzip
#unzip terraform_1.6.5_linux_386.zip
#sudo mv terraform /usr/local/bin/

# Start and enable Jenkins service
echo "Starting Jenkins service..."
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Check Jenkins status
echo "Checking Jenkins status..."
sudo systemctl status jenkins
