#!/bin/bash
clear

while getopts "r" opt
do
	rm -f LinuxSetup.log
done

date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Updating YUM" | tee -a LinuxSetup.log
echo "" | tee -a LinuxSetup.log
sleep 1
sudo yum update
sudo yum upgrade
sudo yum autoremove
echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " YUM update complete." | tee -a LinuxSetup.log

echo "" | tee -a LinuxSetup.log

date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing SSH." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install openssh-server

date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " SSH Installation successful." | tee -a LinuxSetup.log
	date | tr "\n" ":" | tee -a LinuxSetup.log
	echo " Starting and enabling SSHD." | tee -a LinuxSetup.log
	sleep 1
	sudo systemctl start sshd
	sudo systemctl enable sshd
	sudo systemctl status sshd

	date | tr "\n" ":" | tee -a LinuxSetup.log
	if [ $? == 0 ]; then
		echo " SSH starting and enablement successful." | tee -a LinuxSetup.log
	else
		echo " SSH starting and enablement unsuccessful." | tee -a LinuxSetup.log
	fi
else

	echo " SSH Installation unsuccessful." | tee -a LinuxSetup.log
fi
echo "" | tee -a LinuxSetup.log

date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Vim." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install vim
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Vim installation successful." | tee -a LinuxSetup.log
else
	echo " Vim installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Nmtui." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install nmtui
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Nmtui installation successful." | tee -a LinuxSetup.log
else
	echo " Nmtui installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Links." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install links
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Links installation successful." | tee -a LinuxSetup.log
else
	echo " Links installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Firewall." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install firewalld
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Firewall installation successful." | tee -a LinuxSetup.log
else
	echo " Firewall installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Yum-Utils." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install yum-utils
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Yum-Utils installation successful." | tee -a LinuxSetup.log
else
	echo " Yum-Utils installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing JDK8." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install java-1.8.0-openjdk
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " JDK8 installation successful." | tee -a LinuxSetup.log
else
	echo " JDK8 installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Maven." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install maven
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Maven installation successful." | tee -a LinuxSetup.log
else
	echo " Maven installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Less." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install less
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Less installation successful." | tee -a LinuxSetup.log
else
	echo " Less installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Wget." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install wget
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Wget installation successful." | tee -a LinuxSetup.log
else
	echo " Wget installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing GNU Screen." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install screen
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " GNU Screen installation successful." | tee -a LinuxSetup.log
else
	echo " GNU Screen installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Htop." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install htop 
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Htop installation successful." | tee -a LinuxSetup.log
else
	echo " Htop installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Ntpdate." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install nmtui
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Ntpdate installation successful." | tee -a LinuxSetup.log
else
	echo " Ntpdate installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Installing Ntfs-3g." | tee -a LinuxSetup.log
sleep 1
sudo yum -y install ntfs-3g 
date | tr "\n" ":" | tee -a LinuxSetup.log
if [ $? == 0 ]; then
	echo " Ntfs-3g installation successful." | tee -a LinuxSetup.log
else
	echo " Ntfs-3g installation unsuccessful." | tee -a LinuxSetup.log
fi

echo "" | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Synchronizing time." | tee -a LinuxSetup.log
sudo ntpdate time.google.com
sudo timedatectl set-timezone "Asia/Karachi"
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Synchronization complete." | tee -a LinuxSetup.log
date | tr "\n" ":" | tee -a LinuxSetup.log
echo " Performing cleanup." | tee -a LinuxSetup.log
sudo package-cleanup --problems
sudo package-cleanup --orphans
sudo yum autoremove
sudo yum clean all

echo ""
echo ""

echo "Linux setup script execution complete. Please run cat LinuxSetup.log command to see the complete log."
sleep 2
