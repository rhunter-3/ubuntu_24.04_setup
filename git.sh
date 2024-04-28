# Install with apt
sudo apt-get install git

# Set gitconfig parameters
git config --global user.name "Russell Hunter"
git config --global user.email russell.hunter3@gmail.com
git config --global init.defaultBranch main

# Check gitconfig
git config --list
git config --list --show-origin

# Install ssh to set up ssh remotes
sudo apt-get install ssh

# Generate key-pair - o flag to save the private key in a format
# that is more resistant to brute-force password cracking than is
# the default format. Use filename ~/.ssh/id_rsa.pub
ssh-keygen -o
cat ~/.ssh/id_rsa.pub
