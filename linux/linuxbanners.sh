#!/bin/bash
# ---------------------------------------------------------------------------------------------------------------------
#@(#)$Id$
#title  :linuxbanners.sh
#description:   this script is designed to automate the creation of a customizable ssh login banner on most Linux machines
#usage: ./linuxbanners.sh
# ---------------------------------------------------------------------------------------------------------------------

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
#ASCII :)
#ASCII :)
FILE=sec2.txt
if [ -f "$FILE" ]; then
    cat $FILE
else
    wget -qO- https://raw.githubusercontent.com/Drakiat/Blue-Team-Scripts/main/sec2.txt
fi

echo ""
echo ""
echo Input banner:
read banner
sed -i '/Banner/ d' /etc/ssh/sshd_config
sed -i '/#Banner/ d' /etc/ssh/sshd_config

chown root:root /etc/motd
chmod 644 /etc/motd
echo $banner > /etc/motd

chown root:root /etc/issue
chmod 644 /etc/issue
echo $banner > /etc/issue

chown root:root /etc/issue.net
chmod 644 /etc/issue.net
echo $banner > /etc/issue.net
echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config

sudo chmod -x /etc/update-motd.d/*
sed -i '/^[^#]*\<pam_motd.so\>/s/^/#/' /etc/pam.d/sshd

service ssh restart
