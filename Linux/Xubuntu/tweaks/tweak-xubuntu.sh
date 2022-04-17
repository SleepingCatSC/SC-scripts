xargs sudo apt -y purge <remove-packages;sudo apt -y autoremove
sudo apt update;sudo apt -y upgrade
xargs sudo apt -y install <install-packages
wget https://github.com/clickot/ungoogled-chromium-binaries/releases/download/100.0.4896.127-1/ungoogled-chromium_100.0.4896.127-1.1.AppImage -P .
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
sudo wget https://www.htmlcsscolor.com/preview/32x32/000000.png -P /usr/share/xfce4/backdrops
cp xfce-perchannel-xml/* ~/.config/xfce4/xfconf/xfce-perchannel-xml
cat pac-proxy | sudo tee -a /etc/environment
sudo mkdir /etc/X11/xorg.conf.d/;cat turn-off-mouse-acceleration | sudo tee -a /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
cat bash-aliases >> ~/.bashrc
reboot
