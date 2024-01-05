sudo swapoff /swapfile
sudo rm /swapfile
sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
# sudo echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
