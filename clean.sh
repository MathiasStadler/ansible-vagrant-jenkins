#!/bin/bash


#stop vm 

vmName="jenkins"

echo $vmName

pushd armbian-vagrant
vagrant halt
popd

vboxmanage controlvm "$vmName" poweroff
vboxmanage unregistervm "$vmName" --delete


rm -rf armbian-vagrant
