#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
	then echo "root 권한으로 스크립트를 실행하여 주십시오."
        exit
fi

echo U-01
echo -e "pts/0\npts/1\npts/2" >> /etc/securetty
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo 

echo U-02
echo "수동 조치, 버전마다 틀림"
echo

echo U-03
echo "수동 조치, 버전마다 틀림"
echo

echo U-04
sed -i 's/PASS_MAX_DAYS[[:space:]]*[[:digit:]]*/PASS_MAX_DAYS 9999/' /etc/login.defs
echo 

echo U-09 # U-05 전에 실행되어야 함
chmod 444 /etc/shadow
echo

echo U-05
pwunconv
echo 

echo U-06
echo PATH=.:$PATH | sudo tee -a /etc/profile
echo

echo U-07
sudo useradd test
sudo touch /etc/testzz
sudo touch /etc/docker/testzz
sudo touch /tmp/testzz

sudo chown test.test /etc/testzz
sudo chown test.test /etc/docker/testzz
sudo chown test.test /tmp/testzz

sudo userdel -r test
echo 

echo U-08
chmod 666 /etc/passwd
echo 

echo U-10
chmod 666 /etc/hosts
echo 

echo U-11
chmod 666 /etc/xinetd.conf
echo 

echo U-12
chmod 666 /etc/rsyslog.conf
echo 
