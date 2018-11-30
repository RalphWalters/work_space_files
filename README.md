# Required software install for AWS & LaunchCodeEducation

# These should be done seperately...
# zsh & oh-my-zsh
sudo yum install -y zsh

zsh

0

exit

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add to the end of .zshrc
export PATH="/home/vagrant/miniconda3/bin:$PATH"
