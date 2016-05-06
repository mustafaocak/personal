#!/usr/bin/env bash

cat >> /etc/hosts <<EOL
# vagrant environment nodes
192.168.33.10  ansmgmt
192.168.33.11  web1
192.168.33.12  web2

EOL

echo -e "${BULLET} Installing epel repo..."
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
echo -e "${BULLET} Installing vim wget kernel-devel gcc"
sudo yum -y update
sudo yum -y install vim wget kernel-devel gcc
sudo yum -y upgrade

#echo -e "${BULLET} Installing guest additions"
##url="http://download.virtualbox.org/virtualbox/5.0.20/VBoxGuestAdditions_5.0.20.iso"
#
##if curl --output /dev/null --silent --head --fail "$url"; then
##  echo "URL exists: $url"
##  sudo wget --progress=bar:force http://download.virtualbox.org/virtualbox/5.0.20/VBoxGuestAdditions_5.0.20.iso
#sudo mkdir /media/VBoxGuestAdditions
#sudo mount -o loop,ro /home/vagrant/sync/VBoxGuestAdditions_5.0.20.iso /media/VBoxGuestAdditions
#sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#sudo umount /media/VBoxGuestAdditions
#sudo rmdir /media/VBoxGuestAdditions
##else
##  echo "URL does not exist: $url"
##fi

