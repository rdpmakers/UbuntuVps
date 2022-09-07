clear
clear
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser ubuntu --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ubuntu:ubuntu" | sudo chpasswd
sudo usermod -aG sudo,adm ubuntu
su ubuntu
cd
clear
clear
echo "============================="
echo "       installing xfce"
echo "============================="
sudo apt update
sudo apt install xfce4 xfce4-goodies -y
clear
clear
echo "============================="
echo "     installing tightvnc"
echo "============================="
sudo apt install tightvncserver -y
clear
clear
echo "============================="
echo "         configuring"
echo "============================="
echo "note: after configure password, type n"
vncserver
sleep 5
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
echo -e "#!/bin/bash\nxrdb $HOME/.Xresources\nstartxfce4 &" >> ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
vncserver
echo "Start XFCE"
echo "===================================="
echo "===================================="
echo "VNC Password: your password"
echo "Terminal Password : ubuntu"
echo "VNC Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "IP:" && curl --silent --show-error ipconfig.io
echo "===================================="
echo "===================================="

