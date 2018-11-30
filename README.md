# Required software install for AWS & LaunchCodeEducation

# This should be done seperately...
# zsh & oh-my-zsh
sudo yum install -y zsh
zsh
0
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add to the end of .zshrc
export PATH="/home/vagrant/miniconda3/bin:$PATH"
