#!/bin/bash
set -e


rm -rf workdir

echo " install vagrant plugins"
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest


echo "change to armbian-vagrant"
#cd $(dirname armbian-vagrant)
pushd workdir

echo "save orginal Vagrantfile save"
cp Vagrantfile Vagrantfile_save

echo "replace Vagrantfile"
cp ../Vagrantfile Vagrantfile

echo "vagrant box update => we will work with the last version"
vagrant box update

echo "vagrant up"
echo "the next thning make the provisioning_script inside the Vagrantfile"
vagrant up

#vagrant status
popd

echo ""
echo ""
echo "************* FINISH *************"
echo "change to armbian-vagrant"
echo "type simple for Login inside Box"
echo "vagrant ssh"



