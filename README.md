# Required software install for AWS & LaunchCodeEducation
./install.sh

# These should be done seperately...
# Install zsh
sudo yum install -y zsh

zsh

0

exit

# Install oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add to the end of .zshrc
export PATH="/home/vagrant/miniconda3/bin:$PATH"
