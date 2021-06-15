#linux-setup.sh
#!/bin/bash



useradd -m exdeusarch
adduser exdeusarch sudo

passwd exdeusarch

passwd

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip ngrok-stable-linux-386.zip
chmod +x ./ngrok

./ngrok authtoken 

./ngrok tcp 22
