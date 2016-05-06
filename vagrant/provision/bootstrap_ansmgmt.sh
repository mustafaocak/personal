#!/usr/bin/env bash                                                                                                                                                                           

BULLET="==>"

echo -e "${BULLET} Updating /etc/hosts"
echo "192.168.33.10   ansmgmt.muo.no   muo" >> /etc/hosts

#echo -e "${BULLET} Installing logstash yum repo"
#rpm --import https://packages.elasticsearch.org/GPG-KEY-elasticsearch

#cat > /etc/yum.repos.d/logstash.repo <<EOF
#[logstash-1.4]
#name=Logstash repository for 1.4.x packages
#baseurl=http://packages.elasticsearch.org/logstash/1.4/centos
#gpgcheck=1
#gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch
#enabled=1

#EOF
echo -e "${BULLET} Installing epel repo..."
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
echo -e "${BULLET} Installing vim wget kernel-devel gcc"
sudo yum -y update
sudo yum -y install vim wget kernel-devel gcc
sudo yum -y upgrade

#echo -e "${BULLET} Installing guest additions"
#cd /tmp
#url="http://download.virtualbox.org/virtualbox/5.0.20/VBoxGuestAdditions_5.0.20.iso"
#
#if curl --output /dev/null --silent --head --fail "$url"; then
#  echo "URL exists: $url"
#  sudo wget --progress=bar:force http://download.virtualbox.org/virtualbox/5.0.20/VBoxGuestAdditions_5.0.20.iso
#  sudo mkdir /media/VBoxGuestAdditions
#  sudo mount -o loop,ro VBoxGuestAdditions_5.0.20.iso /media/VBoxGuestAdditions
#  sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#  sudo rm VBoxGuestAdditions_5.0.20.iso
#  sudo umount /media/VBoxGuestAdditions
#  sudo rmdir /media/VBoxGuestAdditions
#else
#  echo "URL does not exist: $url"
#fi

