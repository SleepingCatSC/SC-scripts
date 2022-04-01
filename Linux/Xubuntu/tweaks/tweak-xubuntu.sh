sudo apt -y purge catfish gucharmap engrampa gnome-font-viewer mate-calc mousepad xfce4-notes onboard xfburn libreoffice* gnome-mines sgt-puzzles gnome-sudoku simple-scan gimp parole firefox pidgin thunderbird transmission-gtk bluez system-config-printer software-properties-gtk gigolo xfce4-taskmanager snapd;sudo apt -y autoremove
sudo apt -y install mpv p7zip-full
sudo rm /usr/share/xfce4/backdrops/*
sudo wget https://www.htmlcsscolor.com/preview/32x32/000000.png -P /usr/share/xfce4/backdrops
sudo find /usr/share/backgrounds/ -name \* -type f -delete
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
cp xfce-perchannel-xml/* ~/.config/xfce4/xfconf/xfce-perchannel-xml
sudo cp locale /etc/default
sudo apt-get install gawk m4 libwxgtk3.0-gtk3-dev libx11-dev libxi-dev libpcre3-dev libxerces-c-dev libspdlog-dev libuchardet-dev libssh-dev libssl-dev libsmbclient-dev libnfs-dev libneon27-dev libarchive-dev cmake g++ git -y
git clone https://github.com/elfmz/far2l
mkdir -p far2l/_build
cd far2l/_build
cmake -DUSEWX=yes -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc --all)
sudo make install
rm -rf ../../far2l
reboot
