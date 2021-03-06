# bash script for launch_code required-software-install

# Change to user directory
cd

# Update existing OS image
sudo yum update -y

# Make Download directory if not present. Change to Download directory
if [ ! -d Download ] 
then
    mkdir -p Download
fi
cd Download

# NodeJS LTS
# sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
# sudo yum install -y nodejs

# Chromium
sudo yum install -y epel-release
sudo yum install -y chromium

# Google Chrome
# URL=https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# sudo yum install -y ${URL}

# Microsoft Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum check-update
sudo yum install -y code

# Microsoft .NET Core SDK 2.2
# https://dotnet.microsoft.com/download/linux-package-manager/rhel/sdk-2.2.100
sudo rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm
sudo yum install -y dotnet-sdk-2.2

# Miniconda Python
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
# Activate and update
cd
source .bashrc
conda update conda -y

# MariaDB RDBMS
sudo yum install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo systemctl status mariadb

# Setup MariaDB
# mysql_secure_installation
# mysql -V
# mysqld --print-defaults
# mysql -u root -p
