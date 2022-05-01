xargs sudo apt -y purge <remove-packages;sudo apt -y autoremove
sudo apt update;sudo apt -y upgrade
xargs sudo apt -y install <install-packages
git clone https://github.com/elfmz/far2l
mkdir -p far2l/_build;cd far2l/_build
cmake -DUSEWX=yes -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc --all)
sudo make install
cd -;rm -rf far2l
sudo swapoff -a
sudo dd if=/dev/zero of=/swapfile bs=1024 count=16777216
sudo mkswap /swapfile
sudo chmod 600 /swapfile
sudo swapon /swapfile
sudo rm /usr/share/xfce4/backdrops/*
sudo find /usr/share/backgrounds/ -name \* -type f -delete
sudo cp 000000.png /usr/share/xfce4/backdrops
cp xfce-perchannel-xml/* ~/.config/xfce4/xfconf/xfce-perchannel-xml
sudo mkdir /etc/X11/xorg.conf.d/;sudo cp 50-mouse-acceleration.conf /etc/X11/xorg.conf.d
sudo cp locale /etc/default
cat bash-aliases >> ~/.bashrc
cat bash-aliases | sudo tee -a /root/.bashrc
cat pac-proxy | sudo tee -a /etc/environment
sudo cp vsftpd.conf /etc
reboot
# wget https://github.com/clickot/ungoogled-chromium-binaries/releases/download/99.0.4844.84-1.1/ungoogled-chromium_99.0.4844.84-1.1.AppImage