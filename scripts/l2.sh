cd /mnt/disk1/images/
virt-install --name new_vm --ram 16384 --disk path=/mnt/disk1/images/new_vm.img,format=qcow2 --network bridge=br0,mac=52:54:00:c7:d6:ea,model=virtio, --vcpus 8 --import --noautoconsole
