#!/bin/bash
set -e


rm -rf WORKDIR
mkdir WORKDIR

echo " install vagrant plugins"
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-proxyconf


echo "change to armbian-vagrant"
#cd $(dirname armbian-vagrant)
pushd WORKDIR

echo "replace Vagrantfile"
cp ../Vagrantfile Vagrantfile

echo "copy provison playbook"
cp -a ../provisioning . 

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



