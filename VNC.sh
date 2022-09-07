clear
clear
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser ubuntu --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ubuntu:ubuntu" | sudo chpasswd
sudo usermod -aG sudo,adm ubuntu
clear
clear
echo "============================="
echo "       installing xfce"
echo "============================="
sudo apt update
sudo apt install xfce4 xfce4-goodies -y
clear
clear
