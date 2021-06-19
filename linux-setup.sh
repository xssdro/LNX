#linux-setup.sh
#!/bin/bash


 #Create New Account
 useradd -m exdeusarch
 adduser exdeusarch sudo
 echo -e "kurama9\nkurama9" | passwd exdeusarch
 echo "New Account Created"

 #Change Root Password
 echo "kurama9" | passwd stdin > /dev/null

 #Setup sshd_config
 cat <<'SSHCONFIG' > /etc/ssh_sshd_config
#SSHCONFIG
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
LogLevel VERBOSE
Subsystem sftp /usr/lib/ssh/sftp-server -f AUTHPRIV -l INFO
PermitRootLogin yes
PasswordAuthentication yes
PubkeyAuthentication yes
PermitEmptyPassword no
UsePrivilegeSeparation sandbox
UsePAM yes
SSHCONFIG

 #Restart SSH
 service ssh restart

 #Download Ngrok
 wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
 unzip ngrok-stable-linux-386.zip
 chmod +x ./ngrok
