sudo apt-get --purge remove "*cublas*" "cuda*" "nsight*" "*nvidia*" -y
sudo apt autoremove -y
sudo apt-get update -y
lspci | grep -i nvidia
gcc --version
sleep 10
sudo apt install gcc
sleep 5
sudo apt-get install linux-headers-$(uname -r)
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.6.2/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.2-510.47.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-6-local_11.6.2-510.47.03-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-6-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
