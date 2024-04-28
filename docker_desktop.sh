# Check ownership of kvm devise and user to the kvm group
ls -al /dev/kvm
sudo usermod -aG kvm $USER

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# This isntallation will end in an error "N: Download is performed unsandboxed as root as file"
# This error can be ignored as per the official documentation
sudo apt-get install ./Downloads/docker-desktop-4.29.0-amd64.deb
