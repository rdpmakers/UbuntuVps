clear
clear
echo "============================="
echo "   updating, please wait"
echo "============================="
sudo apt-get update
sleep 5
clear
clear
echo "============================="
echo "       installing GUI"
echo "============================="
sudo apt install ubuntu-desktop -y
sleep 5
clear
clear
echo "============================="
echo "      installing CRD"
echo "============================="
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb -y
sleep 5
clear
clear
echo "============================="
echo "  installing chrome browser"
echo "============================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sleep 5
clear
clear
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser ubuntu --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ubuntu:ubuntu" | sudo chpasswd
sudo usermod -aG sudo,adm ubuntu
sleep 5
clear
clear
echo "========================================================="
echo " get crp from: https://remotedesktop.google.com/headless"
echo "      paste the crp on command then setup your rdp"
echo "========================================================="
echo " note: use this password if you are using a 'sudo' command : ubuntu"
echo " note: don't close the connection untill CRD get online"
su ubuntu
cd
