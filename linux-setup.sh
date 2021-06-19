#linux-setup.sh
#!/bin/bash


 #Create New Account
 useradd -m exdeusarch
 adduser exdeusarch sudo
 echo -e "kurama9\nkurama9" | passwd exdeusarch
 echo "New Account Created"

 #Change Root Password
 echo "kurama9" | passwd stdin > /dev/null

 #Update
 apt-get update
 apt install nano

 #Setup sshd_config
 wget https://raw.githubusercontent.com/xssdro/LNX/main/ssh.txt
 cat ssh.txt > /etc/ssh/sshd_config

 #Restart SSH
 service ssh restart

 #Download Ngrok
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
 unzip ngrok-stable-linux-386.zip
 chmod +x ./ngrok
