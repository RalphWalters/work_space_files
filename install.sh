# bash script for launch_code required-software-install

# Change to user directory
cd ~/

# Make Download directory if not present. Change to Download directory
if [ ! -d ~/Download ] 
then
    mkdir -p ~/Download
fi
cd ~/Download

# NodeJS LTS
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
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

# Miniconda Python
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# MariaDB
yum install -y mariadb-server
systemctl start mariadb
systemctl enable mariadb
systemctl status mariadb

# Setup MariaDB
# mysql_secure_installation
# mysql -V
# mysqld --print-defaults
# mysql -u root -p

# zsh & oh-my-zsh
yum install -y zsh
zsh -0
exit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
