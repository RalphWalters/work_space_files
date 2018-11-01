#!/bin/bash
# bash script for launch_code required-software-install

# NodeJS
curl -sL https://rpm.nodesource.com/setup_11.x | sudo bash -
yum install -y nodejs

# Chromium
yum install -y epel-release
yum install -y chromium

# Google Chrome
# URL=https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# yum install -y ${URL}

# Microsoft Visual Studio Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yum check-update
yum install -y code

# Microsoft .NET SDK
rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm
yum install -y dotnet-sdk-2.1

# Anaconda Python
# Go to Download directory
#cd ~/Downloads

# You can change what anaconda version you want at 
# https://repo.continuum.io/archive/
#wget -c https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
#bash Anaconda3-5.3.0-Linux-x86_64.sh
#echo 'export PATH="~/anaconda3/bin:$PATH"' >> ~/.bashrc

# Refresh basically
#source ~/.bashrc

#conda update conda

# MariaDB
touch /etc/yum.repos.d/MariaDB.repo
echo "[mariadb]\nname = MariaDB\nbaseurl = http://yum.mariadb.org/10.1/centos7-amd64\ngpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB\ngpgcheck=1" > /etc/yum.repos.d/MariaDB.repo

# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-lamp-amazon-linux-2.html
# LAMP for Amazon Linux 2
# amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
# yum install -y httpd mariadb-server

# Set startup for Apache HTTP Server
# systemctl start httpd
# systemctl enable httpd
# systemctl is-enabled httpd

# Install zsh & oh-my-zsh
yum install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
