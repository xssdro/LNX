#linux-setup.sh
#!/bin/bash

echo "### Creating Account ####"

useradd -m exdeusarch
adduser exdeusarch sudo
exdeus:kurama9 | chpasswd

-e kurama9\nkurama9 | passwd root

echo "### Install Ngrok ###"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip ngrok-stable-linux-386.zip
chmod +x ./ngrok

echo "### Start Ngrok ###"
./ngrok tcp 22
