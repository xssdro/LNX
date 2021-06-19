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
